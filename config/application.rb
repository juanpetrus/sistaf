require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Sistaf
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    Time::DATE_FORMATS[:default] = '%d/%m/%Y %H:%M'
    Date::DATE_FORMATS[:default] = '%d/%m/%Y'
    config.time_zone = 'La Paz'
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    config.i18n.default_locale = :"pt-BR"
	  I18n.enforce_available_locales = false
  end
end
