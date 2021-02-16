require_relative 'boot'
require 'rails/all'
Bundler.require(*Rails.groups)

module Instagramclone
  class Application < Rails::Application
    config.time_zone = 'Tokyo'
    config.active_record.default_timezone = :local
    config.i18n.default_locale = :ja
    config.load_defaults 5.2
    config.assets.paths << "#{Rails}/vendor/assets/fonts"
    config.assets.precompile += %w(*.eot *.svg *.ttf *.woff)
    config.generators do |g|
      g.assets false
      g.helper false
    end
  end
end
