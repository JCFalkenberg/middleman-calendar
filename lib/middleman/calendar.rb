require 'middleman-core'
require 'middleman-blog'
require 'middleman/calendar/version'

::Middleman::Extensions.register(:calendar) do
  require 'middleman/calendar/extension'
  ::Middleman::CalendarExtension
end
