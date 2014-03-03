module WineScraper
	class ScrapeSite
		def initialize
			
		end

		def scrape (shop, winetype)
			@url = form_url(shop, winetype)
			wines = parse_url(@url)
		end

		def form_url (shop, winetype)
			
		end

		def parse_url(url)
			@url = url
			
		end
	end
end