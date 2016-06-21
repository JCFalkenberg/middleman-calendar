require 'middleman-core'
require 'middleman-blog'
require 'week_of_month'

module Middleman
	class CalendarExtension < Extension
		def initialize(app, options_hash={}, &block)
			super
			# place in class variable so helpers can access
			@@calendar_article = nil
		end

		helpers do
			def calendar(article, blog_name='blog')
				@calendar_article = article
				@blog_name = blog_name

				file = File.join(File.dirname(__FILE__), 'calendar.erb')
				ERB.new(File.read(file), 0, '>').result(binding)
			end
		end
	end
end
