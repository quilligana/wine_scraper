require 'rubygems'
require 'capybara/rspec'
require 'wine_scraper'
require 'fakeweb'

FakeWeb.register_uri(:get, "http://www.thecorkscrew.ie/red-wine.html?limit=all",
                     :body => File.open(File.dirname(__FILE__) + '/support/fixtures/corkscrew-red.html').read,
                     :status => ["200", "Ok"])