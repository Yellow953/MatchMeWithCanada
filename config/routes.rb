Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  
  get "get_started", to: "application#get_started", as: "get_started"
  get "english_teachers", to: "application#english_teachers", as: "english_teachers"
  get "french_teachers", to: "application#french_teachers", as: "french_teachers"
  get "recruiters", to: "application#recruiters", as: "recruiters"
  get "materials", to: "application#materials", as: "materials"
  
  get "test", to: "application#test"

  root "application#index"
end
