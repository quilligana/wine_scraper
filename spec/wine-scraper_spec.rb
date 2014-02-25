require 'spec_helper'
require 'wine-scraper'

describe WineScraper::Scraper  do
	let!( :url ){ 'http://www.thecorkscrew.ie/red-wine.html?limit=all' }
	it "should be instantiated with a 'url' arguement" do
		expect { WineScraper::Scraper.new(url) }.not_to raise_error
		expect { WineScraper::Scraper.new( ) }.to raise_error
	end

	let!( :page ){ WineScraper::Scraper.new(url) }
	it "should return an html document" do
		expect { page }.to have_content('<!DOCTYPE html>')
	end
end