require_dependency "tailf/application_controller"

module Tailf
  class LogController < ApplicationController
  	
    def index
    	# Logging.logger.root.level = 'off'
    	# @last_25_lines = `tail -n 250 "#{Tailf.rails_log_path}"`
    	#Rails.application.config['log'] = 'aaa'
    	# render text: @last_25_lines
    end
  end
end
