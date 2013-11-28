require_dependency "tailf/application_controller"

module Tailf
  class LogController < ApplicationController
    def index
    	# Logging.logger.root.level = 'off'
    	@last_25_lines = `tail -n 25 log/development.log`
    	#Rails.application.config['log'] = 'aaa'
    	render text: Rails.application.config.methods
    end
  end
end
