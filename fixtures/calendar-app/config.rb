activate :calendar

activate :blog do |blog|
	blog.name = "blog"
	blog.sources = "blog/{year}-{month}-{day}.html"
	blog.permalink = "{year}-{month}-{day}.html"
	blog.layout = "basic"

	blog.calendar_template = "archive.html"
end
