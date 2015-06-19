require 'rails_admin/config/actions'
require 'rails_admin/config/actions/base'

module RailsAdminPublish
end

module RailsAdmin
  module Config
    module Actions
      class Publish < RailsAdmin::Config::Actions::Base

        register_instance_option :bulkable? do
          true
        end

        register_instance_option :link_icon do
          'icon-check'
        end

        register_instance_option :controller do
          Proc.new do
            #Get all selected rows
            @posts = list_entries(@model_config, :destroy)

            #update published field to true
            @posts.each do |post|
              post.update_attribute(:published, true)
            end

          flash[:success] = "You have published this post"

            redirect_to back_or_index
          end
        end
      end
    end
  end
end