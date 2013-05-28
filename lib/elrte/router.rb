module Elrte
  class Router

    def initialize(application)
      @application = application
    end

    # Creates all the necessary routes for the Elrte configurations
    #
    # Use this within the routes.rb file:
    #
    #   Application.routes.draw do |map|
    #     Elrte.routes(self)
    #   end
    #
    def apply(router)
      router.send(:match, {'elfinder' => 'elfinder#connector', :as => 'elfinder_connector', :via => [:get, :post]})
    end

  end
end
