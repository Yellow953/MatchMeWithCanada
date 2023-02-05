class AdminController < ApplicationController
    before_action :authenticate_user!
    before_action :admin_check

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
    
    def new_user 
        @user = User.new
    end

    def save_user
        @user = User.new(user_params)
        if @user.save
            flash[:success] = "User successfully created"
            redirect_to admin_path
        else
            flash[:danger] = "Could not create user"
            redirect_to admin_new_user_path
        end
    end
    
    def edit_user
        set_user
    end
    
    def update_user
        set_user
        if @user.update(user_params)
            flash[:success] = "User successfully updated"
            redirect_to admin_path
        else
            flash[:danger] = "Could not update user"
            redirect_to admin_edit_user_path
        end
    end
    
    def delete_user
        set_user
        @user.destroy
        flash[:success] = "User deleted"
        redirect_to admin_path
    end
    
    protected
        def admin_check
            if current_user.role != 1
                redirect_to root_path
            end
        end
        def set_user
            @user = User.find(params[:id])
        end
        def user_params
            params.require(:user).permit(:name, :email, :role, :image, :price, :description, :phone, :password, :password_confirmation)
        end
end
