$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "apposs_simple_adapter/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "apposs_simple_adapter"
  s.version     = AppossSimpleAdapter::VERSION
  s.authors     = ["fsword"]
  s.email       = ["li.jianye@gmail.com"]
  s.homepage    = "http://fsword.github.com"
  s.summary     = "AppossSimpleAdapter"
  s.description = "A sample adapter for apposs."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.5"
  s.add_dependency "jquery-rails"
  s.add_dependency 'omniauth'
  s.add_dependency 'omniauth-google-oauth2'

end
