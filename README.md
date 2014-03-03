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

The following example shows how to extract an array of red wines from [*thecorkscrew.ie*](http://www.thecorkscrew.ie/). The extrated array holds information on wine names, prices, stock availability and a short description.

```red_wines = wine_scrape(corkscrew, red)```

## Testing

RSpec has been added as a default task in the Rakefile so just run `rake`

## License

(The MIT license)

Copyright © 2008 - 2014:

Aidan Quilligan

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request