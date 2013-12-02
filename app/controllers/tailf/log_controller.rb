require_dependency "tailf/application_controller"

module Tailf
<<<<<<< HEAD
	class LogController < ApplicationController
		def index
    	file_exist = File.exist?("#{Tailf.rails_log_path}")
    	if file_exist
    		counter = 1
    		@file_content = []
    			file = File.new("#{Tailf.rails_log_path}", "r")
    			while (line = file.gets)
    				@file_content <<  line
    				counter = counter + 1
    			end
    			file.close
    	else
    		@file = "Sorry file not exist!"
    	end
        @file_content = @file_content.reverse
=======
  class LogController < ApplicationController
  	
    def index
    	# Logging.logger.root.level = 'off'
    	# @last_25_lines = `tail -n 250 "#{Tailf.rails_log_path}"`
    	#Rails.application.config['log'] = 'aaa'
    	# render text: @last_25_lines
>>>>>>> 5e6840e234b0f57cae323cc19a96ec8901e86350
    end
end
end
