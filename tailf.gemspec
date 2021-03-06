$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "tailf/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "tailf"
  s.version     = Tailf::VERSION
  s.authors     = ["shamithc"]
  s.email       = ["shamithc@gmail.com"]
  s.homepage    = ""
  s.summary     = "aaaa"
  s.description = ""

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.1"
  s.add_dependency 'guard-livereload'
  s.add_dependency 'better_errors'
  
  s.add_development_dependency "sqlite3"
end
