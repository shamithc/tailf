module Tailf
  class Engine < ::Rails::Engine
    isolate_namespace Tailf

	# config.autoload_paths << File.expand_path("middleware.rb", __FILE__) 

	initializer "my_engine.add_middleware" do |app|
		app.middleware.use Tailf::Middleware, :silenced => ["/application/log"]
	end

	initializer 'set_logger_path', :after => 'initialize_logger' do |app|
    	Tailf.rails_log_path = Rails.configuration.paths["log"].first
  	end
  end
end
