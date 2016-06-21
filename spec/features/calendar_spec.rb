require 'spec_helper'

describe 'basic', :type => :feature do
  before do
    visit '/2016-06-15.html'
  end

  it 'has a calendar div' do
    expect(page.html).to include 'middleman_calendar_div'
  end

  it 'has a row of week days' do
    expect(page.html).to include "<li>\n\t<ul>\n\t\t<li>S</li>\n\t\t<li>M</li>\n\t\t<li>T</li>\n\t\t<li>W</li>\n\t\t<li>T</li>\n\t\t<li>F</li>\n\t\t<li>S</li>\n\t</ul>\n</li>"
  end

  it 'has a previous month link' do
    expect(page.html).to include '<span class="middleman_calendar_previous_link">'
    expect(page.html).to include '<a href="/2016-05-29.html"><<</a>'
  end

  it 'has a month link' do
    expect(page.html).to include '<span class="middleman_calendar_month_link">'
    expect(page.html).to include '<a href="/2016/06.html">June 2016</a>'
  end

  it 'has a next month link' do
    expect(page.html).to include '<span class="middleman_calendar_next_link">'
    expect(page.html).to include '<a href="/2016-07-01.html">>></a>'
  end

  it 'has a links for today and tomorrow' do
    expect(page.html).to include '<a href="/2016-06-15.html">15</a>'
    expect(page.html).to include '<a href="/2016-06-16.html">16</a>'
  end
end
