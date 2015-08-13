require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ProficiencyTest
  class Application < Rails::Application
    config.autoload_paths += %W(
    #{config.root}/lib
    )

    config.i18n.load_path += Dir["#{config.root}/config/locales/**/*.yml"]
    config.autoload_paths << "#{Rails.root}/app/enumerations"

    css_files = []
    Dir.glob("#{config.root}/app/assets/stylesheets/*.{css, erb}").each { |f|
      css_files << File.basename(f)
    }

    js_files = []
    Dir.glob("#{config.root}/app/assets/javascripts/*.{js, erb}").each { |f|
      js_files << File.basename(f)
    }
    config.assets.precompile += css_files.concat(js_files)

    config.action_controller.include_all_helpers = false

    config.i18n.default_locale = 'pt-BR'
  end
end
