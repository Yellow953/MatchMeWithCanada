Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  
  get "get_started", to: "application#get_started", as: "get_started"
  get "english_teachers", to: "application#english_teachers", as: "english_teachers"
  get "french_teachers", to: "application#french_teachers", as: "french_teachers"
  get "recruiters", to: "application#recruiters", as: "recruiters"
  get "materials", to: "application#materials", as: "materials"
  get "visas", to: "application#visas", as: "visas"
  get "hire_a_professional", to: "application#hire_a_professional", as: "hire_a_professional"
  
  get "test", to: "application#test"

  get "/admin/users", to: "users#index", as: "users"

  root "application#index"
end
