require "apposs_simple_adapter/engine"
require "apposs_simple_adapter/fix_ssl"

module AppossSimpleAdapter
  autoload :AppLoader,      'apposs_simple_adapter/app_loader.rb'
  autoload :MachineLoader,  'apposs_simple_adapter/machine_loader.rb'
  autoload :Auth,           'apposs_simple_adapter/auth.rb'
end
