require 'elrte/router'

module Elrte
  class Application

    def router
      @router ||= Router.new(self)
    end
    
    def routes(rails_router)
      router.apply(rails_router)
    end

    def register_default_assets
      register_stylesheet 'elrte.css', :media => 'all'

      register_javascript 'jquery.min.js'
      register_javascript 'jquery-ui.min.js'
      register_javascript 'jquery_ujs.js'

      register_javascript 'elrte.js'
    end

  end
end
