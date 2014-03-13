Feature: WineScraper
  In order to scrape wine data from various websites
  As a CLI
  I want to be as objective as possible

  Scenario: Scraping red wine from The Corkscrew
    When I run "wine_scraper scrape corkscrew red"
    Then the output should contain "Red wines"