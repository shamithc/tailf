require_dependency "tailf/application_controller"

module Tailf
  class LogController < ApplicationController
    def index
    	render text: 'aaa'
    end
  end
end
