require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Customizer
  class Application < Rails::Application
    config.i18n.default_locale = :"pt-BR"
    config.assets.initialize_on_precompile = false
  end
end
