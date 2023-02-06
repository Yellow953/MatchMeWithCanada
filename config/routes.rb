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
  
  get "/admin", to: "admin#dashboard", as: "admin"
  get "/admin/french", to: "admin#french_teachers", as: "admin_french_teachers"
  get "/admin/english", to: "admin#english_teachers", as: "admin_english_teachers"
  get "/admin/recruiters", to: "admin#recruiters", as: "admin_recruiters"
  get "/admin/materials", to: "admin#materials", as: "admin_materials"

  get "/admin/user/new", to: "admin#new_user", as: "admin_new_user"
  post "/admin/user/save", to: "admin#save_user", as: "admin_save_user"
  get "/admin/user/:id", to: "admin#edit_user", as: "admin_edit_user"
  post "/admin/user/:id", to: "admin#update_user", as: "admin_update_user"
  delete "/admin/user/:id", to: "admin#delete_user", as: "admin_delete_user"

  get "/admin/material/new", to: "admin#new_material", as: "admin_new_material"
  post "/admin/material/save", to: "admin#save_material", as: "admin_save_material"
  get "/admin/material/:id", to: "admin#edit_material", as: "admin_edit_material"
  post "/admin/material/:id", to: "admin#update_material", as: "admin_update_material"
  delete "/admin/material/:id", to: "admin#delete_material", as: "admin_delete_material"

  get "test", to: "application#test"
  get "download", to: "application#download_mobile_app", as: "download_mobile_app"

  root "application#index"
end
