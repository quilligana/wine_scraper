module WineScraper
	module Corkscrew

		def get_wine(winetype)
			@winetype = winetype
			@base_url = 'http://www.thecorkscrew.ie/'
			@url = form_url(@base_url, winetype)
			scrape_wine(@url)
		end

		def form_url(base_url, winetype)
			case winetype
			when winetype == red
				return base_url+'red-wine.html?limit=all'
			when winetype == white
				return base_url+'white-wine.html?limit=all'
			end
		end

		def scrape_wine(url)
			@doc = Scraper.new(url)
			wines = []
			doc.css(".item").each do |item|
				item = Wine.new
				item.name = item.at_css(".product-name").text
				item.price = item.at_css(".price").text[/[0-9\.]+/]
				item.availability = true
				item.description = item.at_css(".description").text
				wines << item
			end
			return wines
		end

	end
end