require "elrte/version"
require 'elrte/application'
require 'elrte/engine'

module Elrte

  # Gets called within the initializer
  def self.setup

    application = Elrte::Application.new
    application.register_default_assets

    Rails.application.config.assets.paths << File.expand_path(__FILE__, '../vendor/elfinder/js')

  end

end
