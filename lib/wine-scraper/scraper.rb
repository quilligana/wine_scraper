module WineScraper
	require "open-uri"
	
    class Scraper
  	  attr_reader :doc

      def initialize url
        @doc = Nokogiri::HTML(open(url))
      end

  end
end