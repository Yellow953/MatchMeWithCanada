class AdminController < ApplicationController
    before_action :authenticate_user!
    before_action :admin_check, only: %i[ dashboard english_teachers french_teachers recruiters materials ]

    def dashboard
        @users = User.where(role: 0) 
        render layout: "layouts/admin"
    end
 
    def english_teachers
        @users = User.where(role: 2)
        render layout: "layouts/admin"
    end
 
    def french_teachers
        @users = User.where(role: 3)
        render layout: "layouts/admin"
    end
 
    def recruiters
        @users = User.where(role: 4)
        render layout: "layouts/admin"
    end

    def materials
        @materials = Material.all
        render layout: "layouts/admin"
    end

    protected
        def admin_check
            if current_user.role != 1
                redirect_to root_path
            end
        end
            
end
