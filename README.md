# Middleman::Calendar

When building the site for my [comic](http://bobscomic.com) in [middleman](http, I wanted a graphical calendar for the archives, and in looking for solutions,
I found [week_of_month](https://github.com/sachin87/week-of-month) which let me build a GUI fairly easily

The calendar is stylable to your desire (and does require some styling to not just be an ugly list of lists), and an example is provided below

This is my time creating a gem, so admit that it's not probably entirely correctly done.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'middleman-calendar'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install middleman-calendar
    

## Usage

Activate it in your site's config.rb
```ruby
activate :calendar
```

To display a calendar:
```ruby
<%= calendar(article) %>
```

You can also optionally specify a blog
```ruby
<%= calendar(article, 'blog') %>
```


You will also need to have some CSS styling for it

```css
.middleman_calendar_div {
  width:auto;
  padding:10px;

  .middleman_calendar_previous_link {
    float:left;
  }
  .middleman_calendar_month_link {
    float:center;
  }
  .middleman_calendar_next_link {
    float:right;
  }

  ul {
    list-style-type:none;
    padding:0px;
    margin:0px;

    li {
      margin-left:0px;
      margin-top:5px;
      margin-bottom:0px;

      ul {
        columns:7;
        list-style-type:none;
        padding:0px;
        margin:0px;
        margin-left:5px;
        margin-right:5px;

        li {
          border-width:1px;
          border-style:solid;
          margin:0px;
          padding-left:3px;
          padding-right:3px;
          margin-left:-5px;
          margin-right:-5px;
        }
      }
    }
  }
}
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jcfalkenberg/middleman-calendar.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

