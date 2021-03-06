require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module Tcfplatform
  class Application < Rails::Application

    config.generators do |g|
      g.stylesheets false
      g.javascripts false
      
    end

    config.assets.paths << "#{Rails.root}/app/assets/font"
    config.assets.precompile += ["fontawesome-webfont.ttf",
                             "fontawesome-webfont.eot",
                             "fontawesome-webfont.svg",
                             "fontawesome-webfont.woff"]
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    config.time_zone = 'Sydney'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

  end
end
