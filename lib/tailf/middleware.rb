module Tailf
  class Middleware < Rails::Rack::Logger
    def initialize(app, opts = {})
      @app = app
      @opts = opts
      @opts[:silenced] ||= []
    end

    def call(env)
      puts @opts[:silenced].include?(env['PATH_INFO'])
      puts env['PATH_INFO']
      if env['X-SILENCE-LOGGER'] || @opts[:silenced].include?(env['PATH_INFO'])
        Rails.logger.silence do
          @app.call(env)
        end
      else
        @app.call(env)
      end
    end

  end
end


module Rails
  module Rack
    # Sets log tags, logs the request, calls the app, and flushes the logs.
    class Logger < ActiveSupport::LogSubscriber

      protected
      def started_request_message(request)
        bolcked_path = ["/assets/tailf/log.css", "/assets/tailf/application.css", "/assets/tailf/log.js", "/assets/tailf/application.js", "/application/log"]
        # unless bolcked_path.include?()
        puts request.env["PATH_INFO"]
        ''
      end
    end
  end
end
