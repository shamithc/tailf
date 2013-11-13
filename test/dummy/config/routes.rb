Rails.application.routes.draw do
  
  mount_tailf
  # mount Tailf::Engine => "/tailf"

  # mount Tailf::Engine => "/tailf", :as => "tailf_engine"
end
