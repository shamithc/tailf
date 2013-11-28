Rails.application.routes.draw do
  
  get "home/index"
  mount_tailf
  # mount Tailf::Engine => "/tailf"

  # mount Tailf::Engine => "/tailf", :as => "tailf_engine"
end
