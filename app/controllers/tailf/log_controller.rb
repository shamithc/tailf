require_dependency "tailf/application_controller"

module Tailf
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
    end
end
end
