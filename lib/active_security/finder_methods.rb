module ActiveSecurity
  module FinderMethods
    # Finds a record using the given id.
    # Because this is injected into the Model as well as the relation,
    # we need handling for both.
    def find(*args)
      if is_a?(ActiveRecord::Relation)
        _active_security_enforce_if_not_scoped
      else
        _active_security_not_scoped_handler
      end

      super
    end

    private

    def _active_security_enforce_if_not_scoped
      scoped_securely =
        if active_security_config.respond_to?(:scope_columns)
          values[:where].present? && active_security_config.scope_columns.all? do |scope_column|
            predicates = values[:where].send(:predicates)
            _active_security_check_predicates_for_scope(predicates, scope_column)
          end
        else
          # If we don't have a specific scope requirement, then just ensure there is some scope.
          values[:where].present?
        end
      _active_security_not_scoped_handler unless scoped_securely
    end

    def _active_security_check_predicates_for_scope(predicates, scope_column)
      predicates.detect do |predicate|
        comp =
          if predicate.respond_to?(:attribute) && predicate.attribute.respond_to?(:name)
            # Handles Arel::Nodes::HomogeneousIn
            predicate.attribute.name
          elsif predicate.respond_to?(:right) && predicate.right.respond_to?(:name)
            # Handles Arel::Nodes::Equality
            predicate.right.name
          else
            _active_security_unhandled_predicate(predicate)
          end
        comp == scope_column
      end
    end

    def _active_security_name_for
      if respond_to?(name)
        "(#{name})"
      else
        "(#{(self.class.name == "Class") ? to_s : self.class.name})"
      end
    end
  end
end
