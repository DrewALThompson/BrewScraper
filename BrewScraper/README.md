# BrewScraper

Welcome to BrewScraper a very niche gem with a very niche purpose! Let's say you're a new brewer or even an advanced brewer and you got struck with inspiration to a great new brew you want to make. Alas, you don't know what ingredients to use so you go to Northernbrewer or some other similar brewing website. But this turns out to be a pain, there are over 200 hops, over 120 malts, etc. and you don't want to click on each link to find out information on each one. Well you're in luck, with a simple command BrewScraper scrapes over NorthernBrewer and gathers you not only a list of ingredients but also a small description of the items. What a deal! Your brewing conundrum is solved and you can get to the meat of the action and make your exciting new beer! 

Of course Version 1.0.0 is just proof of concept and further functionality will be added down the line.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'brew_scraper'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install brew_scraper

## Usage

Once you have the gem installed you can run it from your terminal with ./bin/brew_scraper. The gem itself is pretty self explanatory, at each intersection make a choice and it will present you the information scraped from the website(Northernbrewer.com) as such. Very useful for just getting a quick list of ingredients and small descriptions in a giffy without having to scroll through every item and click on every link.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/'gorgeous-linter-6758'/brew_scraper. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the BrewScraper project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/'gorgeous-linter-6758'/brew_scraper/blob/master/CODE_OF_CONDUCT.md).
