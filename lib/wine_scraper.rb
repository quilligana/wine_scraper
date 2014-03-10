require 'wine_scraper/scraper'
require 'wine_scraper/url'
require 'wine_scraper/corkscrew'
require 'wine_scraper/version'

module WineScraper
  def scrape(source, winetype)
    case
    when source == corkscrew
      return Corkscrew.get_wine(winetype)
    end
  end
end