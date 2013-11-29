module Tailf
  class Middleware
    
    def initialize(app)
      @app = app
    end

    def call(env)
      Rails.logger.silence do
        @app.call(env)
      end
    	# resp = @app.call(env)

		# Rails.logger.info resp

		
        # request = ActionDispatch::Request.new(env)

        # if logger.respond_to?(:tagged)
        #   logger.tagged(compute_tags(request)) { call_app(request, env) }
        # else
        #   call_app(request, env)
        # end
    end

  end
end
    