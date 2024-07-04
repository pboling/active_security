# frozen_string_literal: true

# Get the GEMFILE_VERSION without *require* "my_gem/version", for code coverage accuracy
# See: https://github.com/simplecov-ruby/simplecov/issues/557#issuecomment-825171399
load "lib/active_security/version.rb"
gem_version = ActiveSecurity::Version::VERSION
ActiveSecurity::Version.send(:remove_const, :VERSION)

Gem::Specification.new do |spec|
  spec.name = "active_security"
  spec.version = gem_version

  # See CONTRIBUTING.md
  spec.cert_chain = ["certs/pboling.pem"]
  spec.signing_key = File.expand_path("~/.ssh/gem-private_key.pem") if $PROGRAM_NAME.end_with?("gem")

  spec.authors = ["Peter Boling"]
  spec.email = ["peter.boling@gmail.com"]

  spec.summary = "Prevent insecure, unscoped, finds"
  spec.description = "Disallow insecure, unscoped, finds"
  spec.homepage = "https://github.com/pboling/#{spec.name}"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "#{spec.homepage}/tree/v#{spec.version}"
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/v#{spec.version}/CHANGELOG.md"
  spec.metadata["bug_tracker_uri"] = "#{spec.homepage}/issues"
  spec.metadata["documentation_uri"] = "https://www.rubydoc.info/gems/#{spec.name}/#{spec.version}"
  spec.metadata["wiki_uri"] = "#{spec.homepage}/wiki"
  spec.metadata["funding_uri"] = "https://liberapay.com/pboling"
  spec.metadata["rubygems_mfa_required"] = "true"

  # Specify which files should be added to the gem when it is released.
  spec.files = Dir[
    "lib/**/*.rb",
    "CODE_OF_CONDUCT.md",
    "CHANGELOG.md",
    "CONTRIBUTING.md",
    "LICENSE.txt",
    "README.md",
    "SECURITY.md"
  ]
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html

  spec.add_dependency("activerecord", ">= 5.2")
  spec.add_dependency("activesupport", ">= 5.2")
  spec.add_dependency("version_gem", "~> 1.1", ">= 1.1.4")

  # Development Dependencies
  spec.add_development_dependency("anonymous_active_record", "~> 1.0", ">= 1.0.8")
  spec.add_development_dependency("appraisal", "~> 2.5")
  spec.add_development_dependency("json", ">= 1.7.7")
  spec.add_development_dependency("rake", ">= 0.8.7")
  spec.add_development_dependency("rdoc", ">= 3")
  spec.add_development_dependency("rspec", ">= 3")
  spec.add_development_dependency("rspec-block_is_expected", "~> 1.0", ">= 1.0.5")
  spec.add_development_dependency("rspec-pending_for", "~> 0.1", ">= 0.1.16")
  spec.add_development_dependency("silent_stream", "~> 1.0", ">= 1.0.8")
  spec.add_development_dependency("sqlite3", ">= 1.6.9", "< 2")
end
