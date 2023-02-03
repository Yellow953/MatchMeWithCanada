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

  get "/admin", to: "admin#dashboard", as: "dashboard"
  get "/admin/french", to: "admin#french_teachers", as: "admin_french_teachers"
  get "/admin/english", to: "admin#english_teachers", as: "admin_english_teachers"
  get "/admin/recruiters", to: "admin#recruiters", as: "admin_recruiters"
  get "/admin/materials", to: "admin#materials", as: "admin_materials"

  root "application#index"
end
