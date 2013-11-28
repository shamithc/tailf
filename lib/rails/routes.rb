module ActionDispatch::Routing
  class Mapper
    def mount_tailf
      get "application/log" => "tailf/log#index"
      mount Tailf::Engine => "/tailf", :as => "tailf_engine"
    end
  end
end