module ActionDispatch::Routing
  class Mapper
    # Includes mount_sextant method for routes. This method is responsible to
    # generate all needed routes for sextant
    def mount_tailf
      get "application/log" => "tailf/log#index"
      mount Tailf::Engine => "/tailf", :as => "tailf_engine"
    end
  end
end