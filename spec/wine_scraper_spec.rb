require 'spec_helper'
require 'wine_scraper'

describe WineScraper::Scraper, :type => :feature  do
	let!( :url ){ 'http://www.thecorkscrew.ie/red-wine.html?limit=all' }
	it "should be instantiated with a 'url' arguement" do
		expect { WineScraper::Scraper.new(url) }.not_to raise_error
		expect { WineScraper::Scraper.new( ) }.to raise_error
	end

	let!( :page ){ WineScraper::Scraper.new(url) }
	it "should return an html document" do
		expect { page.body }.to have_selector('body')
		expect { page.body }.to have_selector('p')
		# expect { page.body }.to have_selector("div class='price-box'")	
		expect { page.body }.to have_content("Vivid colour, exuberant aroma of red fruits. Tasty in the mouth, with very round tannins.")
	end
end