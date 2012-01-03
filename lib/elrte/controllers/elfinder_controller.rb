module Elrte
  class ElfinderController < BaseController

    skip_before_filter :verify_authenticity_token, :only => ['connector']
    def connector
      h, r = ElFinder::Connector.new(
        :root => File.join(Rails.public_path, 'system', 'elfinder'),
        :url => '/system/elfinder',
        :perms => {
          /^(Welcome|README)$/ => {:read => true, :write => false, :rm => false},
          '.' => {:read => true, :write => false, :rm => false}, # '.' is the proper way to specify the home/root directory.
          /^test$/ => {:read => true, :write => true, :rm => false},
          'logo.png' => {:read => true},
          /\.png$/ => {:read => false} # This will cause 'logo.png' to be unreadable.
          # Permissions err on the safe side. Once false, always false.
        },
        :extractors => {
          'application/zip' => ['unzip', '-qq', '-o'], # Each argument will be shellescaped (also true for archivers)
          'application/x-gzip' => ['tar', '-xzf'],
        },
        :archivers => {
          'application/zip' => ['.zip', 'zip', '-qr9'], # Note first argument is archive extension
          'application/x-gzip' => ['.tgz', 'tar', '-czf'],
        }
      ).run(params)
      headers.merge!(h)
      render (r.empty? ? {:nothing => true} : {:text => r.to_json}), :layout => false
    end

    #module Callbacks
    #  extend ActiveSupport::Concern
    #  include ::ActiveAdmin::Callbacks
    #
    #  included do
    #    define_active_admin_callbacks :build, :create, :update, :save, :destroy
    #  end
    #
    #  protected
    #
    #  def build_resource
    #    object = super
    #    run_build_callbacks object
    #    object
    #  end
    #
    #  def create_resource(object)
    #    run_create_callbacks object do
    #      save_resource(object)
    #    end
    #  end
    #
    #  def save_resource(object)
    #    run_save_callbacks object do
    #      object.save
    #    end
    #  end
    #
    #  def update_resource(object, attributes)
    #    object.attributes = attributes
    #    run_update_callbacks object do
    #      save_resource(object)
    #    end
    #  end
    #
    #  def destroy_resource(object)
    #    run_destroy_callbacks object do
    #      object.destroy
    #    end
    #  end
    #end

  end
end
