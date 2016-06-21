# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'middleman/calendar/version'

Gem::Specification.new do |spec|
  spec.name          = "middleman-calendar"
  spec.version       = Middleman::Calendar::VERSION
  spec.authors       = ["Daniel Siemer"]
  spec.email         = ["jcfalkenberg@mac.com"]

  spec.summary       = %q{Generates a calendar GUI for your middleman blog}
  spec.description   = %q{Middleman-Calendar creates a list based, stylable calendar GUI for middleman blogs}
  spec.homepage      = "https://github.com/jcfalkenberg/middleman-calendar"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.test_files    = `git ls-files -- {features,fixtures}/*`.split("\n")


  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_runtime_dependency('middleman', ['~> 4.1'])
  spec.add_runtime_dependency('middleman-blog', ['~> 4.0'])
  spec.add_runtime_dependency('week_of_month', ['~> 1.2'])
end
