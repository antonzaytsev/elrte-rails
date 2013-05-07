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
      router.send('get', {'elfinder' => 'elfinder#connector', :as => 'elfinder_connector'})
      #p @application.namespaces.values
      #router.instance_exec(@application.namespaces.values) do |namespaces|
      #  namespaces.each do |namespace|
      #    match '/elfinder' => 'Elfinder#connector', :as => 'elfinder_connector'
      #    #if namespace.root?
      #    #  match '/' => 'dashboard#index', :as => 'dashboard'
      #    #else
      #    #  name = namespace.name
      #    #  match name.to_s => "#{name}/dashboard#index", :as => "#{name.to_s}_dashboard"
      #    #end
      #  end
      #end

    end

  end
end
