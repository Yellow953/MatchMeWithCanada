class ApplicationController < ActionController::Base
    def index
    end

    def get_started
    end

    def english_teachers
    end

    def french_teachers
    end

    def recruiters
    end
    
    def materials
    end

    def visas        
    end

    def hire_a_professional
    end

    def test
        render layout: "layouts/admin"
    end
end
