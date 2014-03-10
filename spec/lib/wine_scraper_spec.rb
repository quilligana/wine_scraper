require 'spec_helper'
require 'wine_scraper'

describe WineScraper do

  let!(:url){ 'http://www.thecorkscrew.ie/red-wine.html?limit=all' }

  # describe "the overall gem functionality" do
  #   test_case = WineScraper.scrape("corkscrew", "red")
  # end

  describe WineScraper::Scraper  do
    it "should be instantiated with a 'url' arguement" do
      expect { WineScraper::Scraper.new(url) }.not_to raise_error
      expect { WineScraper::Scraper.new( ) }.to raise_error
    end

    it "should return an html document" do
      page =  WineScraper::Scraper.new(url)
      page.should_not be_nil
      expect { page.css('li class="item"') }.not_to be_nil
      expect { page.css('li class="price-box"') }.not_to be_nil
    end
  end

  describe WineScraper::Wine do
    it "should be instantiated without any arguements" do
      expect { WineScraper::Wine.new }.not_to raise_error
      expect { WineScraper::Wine.new(foo) }.to raise_error
    end

    let!(:faustino) { WineScraper::Wine.new }
    subject { faustino }
    it { should respond_to(:name) }
    it { should respond_to(:price) }
    it { should respond_to(:availability) }
    it { should respond_to(:description) }
  end

  describe WineScraper::Corkscrew  do
    describe "get_wine" do

    end
    describe "form_url" do
      
    end
    describe "scrape_wine" do
      # let!(:result) { WineScraper::Corkscrew.scrape_wine(url) }
      # subject { result }

      it "should return an array of Wine objects" do
        result = WineScraper::Corkscrew.scrape_wine(url)
        expect { result.first }.not_to be_nil
      end
    end
  end
end