ENV['RAILS_ENV'] ||= 'test'
require 'rubygems'
require 'bundler/setup'

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

$:.unshift File.expand_path('../../', __FILE__)

# I18n
require 'i18n'

I18n.load_path += Dir['config/locales/*.yml']
I18n.load_path += Dir['config/locales/base/*.yml']
I18n.load_path += Dir['config/locales/enumerations/*.yml']
I18n.default_locale = 'pt-BR'
I18n.enforce_available_locales = true
I18n.backend.reload!

require 'active_support/dependencies/autoload'
require 'active_support/core_ext'

require 'pry'
