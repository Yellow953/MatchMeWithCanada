class ApplicationController < ActionController::Base
    def index
    end

    def get_started
    end

    def english_teachers
        @q = User.where(role: 2).ransack(params[:q])
        @users = @q.result(distinct: true).paginate(page: params[:page], per_page: 10)
    end

    def french_teachers
        @q = User.where(role: 3).ransack(params[:q])
        @users = @q.result(distinct: true).paginate(page: params[:page], per_page: 10)
    end

    def recruiters
        @q = User.where(role: 4).ransack(params[:q])
        @users = @q.result(distinct: true).paginate(page: params[:page], per_page: 10)
    end
    
    def materials
        @q = Material.ransack(params[:q])
        @materials = @q.result(distinct: true).paginate(page: params[:page], per_page: 10)
    end

    def visas        
    end

    def hire_a_professional
    end

    def download_mobile_app
        send_file "#{Rails.root}/app/assets/mobile/app.apk", x_sendfile: true 
    end

    def test
        render layout: "layouts/admin"
    end
end
