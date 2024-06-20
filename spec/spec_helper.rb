if ENV.fetch("COVERAGE", false)
  require "simplecov"
  SimpleCov.start do
    load_profile "test_frameworks"
  end
end

require "action_controller/railtie"

Bundler.require :default, :development

Combustion.initialize! :action_controller do
  config.load_defaults Rails::VERSION::STRING.to_f
end

require "rspec/rails"

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  config.infer_spec_type_from_file_location!
  config.use_transactional_fixtures = true

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!
end
