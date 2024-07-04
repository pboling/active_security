module ActiveSecurity
  # The configuration parameters passed to {Base#active_security} will be stored in
  # this object.
  class Configuration
    # The default configuration options.
    attr_reader :defaults

    # The modules in use
    attr_reader :modules

    # The model class that this configuration belongs to.
    # @return ActiveRecord::Base
    attr_accessor :model_class

    # The module to use for finders
    attr_accessor :finder_methods

    # Where logs will be sent
    attr_accessor :logger

    def initialize(model_class, values = nil)
      @model_class = model_class
      @defaults = {}
      @logger = ActiveRecord::Base.logger
      @modules = []
      @finder_methods = ActiveSecurity::FinderMethods
      set(values)
    end

    # Lets you specify the addon modules to use with ActiveSecurity.
    #
    # This method is invoked by {ActiveSecurity::Base#active_security active_security} when
    # passing the `:use` option, or when using {ActiveSecurity::Base#active_security
    # active_security} with a block.
    #
    # @example
    #   class Book < ActiveRecord::Base
    #     extend ActiveSecurity
    #     active_security use: :finders
    #   end
    #
    # @param [#to_s, Module, Hash[[#to_s, Module], Array[Hash[#to_s, any]]]] modules
    #   Arguments should be Modules, or symbols or
    #   strings that correspond with the name of an addon to use with ActiveSecurity,
    #   or a hash/array of hashes where the keys are Modules, symbols, or strings corresponding as previously described, and
    #   the values are the Hashes of key value pairs of configuration attributes and their assigned values.
    #   By default ActiveSecurity provides `:finders`, `:privileged`, `:restricted` and `:scoped`.
    def use(*modules, &block)
      mods = modules.to_a.compact
      mods.map.with_index do |object, idx|
        case object
        when Array
          object.each do |obj|
            if obj.is_a?(Hash)
              _handle_hash(obj)
            else
              mod = get_module(obj)
              _use(mod, idx, &block)
            end
          end
        when Hash
          _handle_hash(object)
        when String, Symbol, Module
          mod = get_module(object)
          _use(mod, idx, &block)
        else
          raise InvalidConfig, "Unknown Argument Type #{object.class}: #{object.inspect}"
        end
      end
    end

    def _handle_hash(hash)
      hash.each do |mod_key, attrs|
        mod = get_module(mod_key)
        _use(mod, 0) do |config|
          config.send(:set, attrs)
        end
      end
    end

    def _use(mod, idx, &block)
      mod.setup(@model_class) if mod.respond_to?(:setup)
      @model_class.send(:include, mod) unless uses?(mod)
      # Only yield on the first module, so as to not run the block multiple times,
      # and because later modules may require the attributes of a prior module to exist.
      # The block structure won't work for more complex config than that.
      # For more complex configuration pass a Hash where the keys are the "modules"
      yield self if block_given? && idx.zero?
      mod.after_config(@model_class) if mod.respond_to?(:after_config)
    end

    # Returns whether the given module is in use.
    def uses?(mod)
      @model_class < get_module(mod)
    end

    private

    def get_module(object)
      (Module === object) ? object : ActiveSecurity.const_get(object.to_s.titleize.camelize.gsub(/\s+/, ""))
    end

    def set(values)
      values&.each { |name, value| send(:"#{name}=", value) }
    end
  end
end
