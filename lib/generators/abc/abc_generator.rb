module Tailf
	class AbcGenerator < Rails::Generators::Base
	  # source_root File.expand_path('../templates', __FILE__)
	  def create_initializer_file
	    create_file "config/initializers/initializer_1.rb", "# Add initialization content here"
	  end
	end
end
