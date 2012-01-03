require "elrte/version"
require 'elrte/application'
require 'elrte/engine'
require 'elrte/controllers/base_controller'
require 'elrte/controllers/elfinder_controller'

module Elrte

  class << self

    attr_accessor :application

    def application
      @application ||= ::Elrte::Application.new
    end
    
    # Gets called within the initializer
    def setup
      application = Elrte::Application.new
      application.register_default_assets

      Rails.application.config.assets.paths << File.expand_path(__FILE__, '../vendor/elfinder/js')
    end

    delegate :routes,        :to => :application

    # Returns true if this rails application has the asset
    # pipeline enabled.
    def use_asset_pipeline?
      DependencyChecker.rails_3_1? && Rails.application.config.try(:assets).try(:enabled)
    end

  end

end
