module WineScraper
	module Corkscrew

		def get_wine(winetype)
			@base_url = 'http://www.thecorkscrew.ie/'
			@url = form_url(@base_url)
		end

		def red_wine
			# doc.css(".item").each do |item|
			# title = item.at_css(".product-name").text
			# price = item.at_css(".price").text[/[0-9\.]+/]
		end

		def white_wine
			
		end

		def rose_wine
			
		end

		def sparkling
			
		end

	end
end