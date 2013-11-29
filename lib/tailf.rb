require "tailf/engine"
require 'rails/routes'
require 'rails/logger'
require 'tailf/logger'
require 'tailf/middleware'

module Tailf
	mattr_accessor :rails_log_path
end