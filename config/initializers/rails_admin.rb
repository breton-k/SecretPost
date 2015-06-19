require Rails.root.join('lib', 'rails_admin_publish.rb')

    RailsAdmin.config do |config|

      ### Popular gems integration

      #== Devise ==
      #config.authenticate_with do
        #warden.authenticate! scope: :admin
      #end
      #config.current_user_method &:current_admin

      ## == Cancan ==
      # config.authorize_with :cancan

      ## == PaperTrail ==
      # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

      ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

      module RailsAdmin
        module Config
          module Actions
            class Publish < RailsAdmin::Config::Actions::Base
              RailsAdmin::Config::Actions.register(self)
            end
          end
        end
      end

      config.actions do
        #root actions
        dashboard                     # mandatory
        #collection actions
        index                         # mandatory
        new
        export
        bulk_delete
        #member actions
        show
        delete
        show_in_app
        #custom actions
        publish do

          ## With an audit adapter, you can add:
          # history_index
          # history_show

        end
      end
    end
