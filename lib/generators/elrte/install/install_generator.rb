module Elrte
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc "Installs Elrte and generates necessary migrations"

      #def copy_initializer
      #  template 'elrte.rb.erb', 'config/initializers/elrte.rb'
      #end
      
      def setup_routes
        route "Elrte.routes(self)"
      end

      def create_assets
        generate "elrte:assets"
      end

      def create_public_folder
        directory "#{File.expand_path("../templates", __FILE__)}/empty_folder/system/elfinder", 'public/system/elfinder'
      end

    end
  end
end
