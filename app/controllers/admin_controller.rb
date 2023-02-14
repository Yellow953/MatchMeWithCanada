class AdminController < ApplicationController
    before_action :authenticate_user!
    before_action :admin_check

    def dashboard
        @q = User.where(role: 0).ransack(params[:q])
        @users = @q.result(distinct: true).paginate(page: params[:page], per_page: 10)
        render layout: "layouts/admin"
    end
 
    def english_teachers
        @q = User.where(role: 2).ransack(params[:q])
        @users = @q.result(distinct: true).paginate(page: params[:page], per_page: 10)
        render layout: "layouts/admin"
    end
 
    def french_teachers
        @q = User.where(role: 3).ransack(params[:q])
        @users = @q.result(distinct: true).paginate(page: params[:page], per_page: 10)
        render layout: "layouts/admin"
    end
 
    def recruiters
        @q = User.where(role: 4).ransack(params[:q])
        @users = @q.result(distinct: true).paginate(page: params[:page], per_page: 10)
        render layout: "layouts/admin"
    end

    def materials
        @q = Material.ransack(params[:q])
        @materials = @q.result(distinct: true).paginate(page: params[:page], per_page: 10)
        render layout: "layouts/admin"
    end
    
    def new_user 
        @user = User.new
    end

    def save_user
        @user = User.create!(user_params)
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
    
    def new_material
        @material = Material.new
    end

    def save_material
        @material = Material.create!(material_params)
        if @material.save
            flash[:success] = "Material successfully created"
            redirect_to admin_materials_path
        else
            flash[:danger] = "Could not create material"
            redirect_to admin_new_material_path
        end
    end
    
    def edit_material
        set_material
    end
    
    def update_material
        set_material
        if @material.update(material_params)
            flash[:success] = "Material successfully updated"
            redirect_to admin_materials_path
        else
            flash[:danger] = "Could not update material"
            redirect_to admin_edit_material_path
        end
    end
    
    def delete_material
        set_material
        @material.destroy
        flash[:success] = "Material deleted"
        redirect_to admin_materials_path
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
        def set_material
            @material = Material.find(params[:id])
        end
        def material_params
            params.require(:material).permit(:name, :image, :price, :link)
        end
end
