require 'spec_helper'
require 'wine_scraper'

describe WineScraper::Scraper  do
	let!( :url ){ 'http://www.thecorkscrew.ie/red-wine.html?limit=all' }
	it "should be instantiated with a 'url' arguement" do
		expect { WineScraper::Scraper.new(url) }.not_to raise_error
		expect { WineScraper::Scraper.new( ) }.to raise_error
	end

	it "should return an html document" do
		page =  WineScraper::Scraper.new(url)
		page.should_not be_nil
		expect { page.css('li class="item"') }.not_to be_nil
		expect { page.css('li class="price-box"') }.not_to be_nil
	end
end