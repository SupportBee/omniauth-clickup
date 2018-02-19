# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-clickup/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Avinasha Sastry"]
  gem.email         = ["avinash@supportbee.com"]
  gem.description   = %q{OmniAuth strategy for ClickUp.}
  gem.summary       = %q{OmniAuth strategy for ClickUp.}
  gem.homepage      = "https://github.com/SupportBee/omniauth-clickup"
  gem.license       = "MIT"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.name          = "omniauth-clickup"
  gem.require_paths = ["lib"]
  gem.version       = OmniAuth::ClickUp::VERSION

  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'omniauth-oauth2', '~> 1.0'

  gem.add_development_dependency "bundler", "~> 1.0"
end
