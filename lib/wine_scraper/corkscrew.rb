module WineScraper
	module Corkscrew
		require "open-uri"
		require "nokogiri"

		def self.get_wine(winetype)
			@winetype = winetype
			@base_url = 'http://www.thecorkscrew.ie/'
			@url = form_url(@base_url, winetype)
			scrape_wine(@url)
		end

		def self.form_url(base_url, winetype)
			case winetype
			when "red"
				@url = "#{base_url}red-wine.html?limit=all"
			when "white"
				@url = base_url+'white-wine.html?limit=all'
			end
			@url
		end

		def self.scrape_wine(url)
			@html = Nokogiri::HTML(open(url))
			wines = []
			@html.css(".item").each do |item|
				product = Wine.new
				product.name = item.at_css(".product-name").text
				product.price = item.at_css(".price").text[/[0-9\.]+/]
				product.availability = true
				product.description = "description"
				wines << product
			end
			return wines
		end

	end
end