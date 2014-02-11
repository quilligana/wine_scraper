module WineScraper
  class Scraper
    attr_reader :agent

    def initialize
      @agent = Mechanize.new
      @agent.user_agent_alias = 'Windows Chrome'
    end
end