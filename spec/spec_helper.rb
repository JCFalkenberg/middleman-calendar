require 'rspec'
require 'capybara/rspec'

require 'middleman-core'
require 'middleman-core/rack'
require 'middleman-blog'

PROJECT_ROOT_PATH = File.dirname(File.dirname(__FILE__))
require File.join(PROJECT_ROOT_PATH, 'lib', 'middleman', 'calendar')

FIXTURE_ROOT_PATH = File.join(PROJECT_ROOT_PATH, 'fixtures', 'calendar-app')
ENV['MM_ROOT'] = FIXTURE_ROOT_PATH

middleman_app = ::Middleman::Application.new

Capybara.app = ::Middleman::Rack.new(middleman_app).to_app do
	set :root, FIXTURE_ROOT_PATH
	set :environment, :development
	set :show_exceptions, false
end
