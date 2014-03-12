require 'wine_scraper/scraper'
require 'wine_scraper/corkscrew'
require 'wine_scraper/version'
require 'wine_scraper/wine'

module WineScraper
  def self.scrape(source, winetype)
    case source
    when "corkscrew"
      Corkscrew.get_wine(winetype)
    end
  end
end