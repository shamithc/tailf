module Tailf
  class Engine < ::Rails::Engine
  	puts config.paths
    isolate_namespace Tailf
  end
end
