module WineScraper
	class ScrapeWine < ScrapeSite

		def initialize(shop, winetype)
			super()
			wines = scrape(shop, winetype)
		end
		
		
	end
	
endWine