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