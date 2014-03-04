# WineScraper

This is a gem for scraping lists of wine and their corresponding prices from various websites.

It is currently set up for listing Red Wines from the [*The Corkscrew*](http://www.thecorkscrew.ie/) website. It is currently being edited to list different types of wines and use different source websites.  It has been tested with [*Cases Wine Warehouse*](http://www.cases.ie/) and [*TESCO WINE by the case*](http://www.tesco.com/wine/).

It is envisaged that this application can be integrated with a larger app in order to grab information about wines and store them in a database for comparison purposes.

## Installation

Add this line to your application's Gemfile:

    gem 'wine_scraper'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install wine_scraper

## Usage

The following example shows how to extract a hash of red wines from [*thecorkscrew.ie*](http://www.thecorkscrew.ie/). The extrated array holds information on wine names, prices, stock availability and a short description.

		red_wines = scrape_wine(corkscrew, red)
		names = red_wines.names
		prices = red_wines.prices
		stockavail = red_wines.avail
		description = red_wines.description

## Testing

RSpec has been added as a default task in the Rakefile so just run `rake`


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

This gem was created by Aidan Quilligan and is released under the MIT license.