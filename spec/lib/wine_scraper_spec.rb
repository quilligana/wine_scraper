require 'spec_helper'
require 'wine_scraper'

describe WineScraper do

  describe "the overall gem functionality" do
    test_case = WineScraper.scrape("corkscrew", "red")
    it "should return an array of Wine objects" do
        expect { test_case.first }.not_to be_nil
        expect { test_case.first.name }.to be { "Fiuza Tres Castas 2012" }
        expect { test_case.first.price }.to be { "9.95" }
        expect { test_case[1] }.not_to be_nil
      end
  end

  let!(:url){ "http://www.thecorkscrew.ie/red-wine.html?limit=all" }
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
    it { should respond_to(:type) }
    it { should respond_to(:price) }
    it { should respond_to(:availability) }
    it { should respond_to(:description) }
  end

  describe WineScraper::Corkscrew  do
    describe "form_url" do
      result = WineScraper::Corkscrew.form_url("http://www.thecorkscrew.ie/", "red")
      subject { result }
      it { should_not be_nil }
      it { should eq "http://www.thecorkscrew.ie/red-wine.html?limit=all" }
    end

    describe "scrape_wine" do
      it "should return an array of Wine objects" do
        result = WineScraper::Corkscrew.scrape_wine(url, "red")
        expect { result.first }.not_to be_nil
        expect { result.first.name }.to be { "Fiuza Tres Castas 2012" }
        expect { result.first.price }.to be { "9.95" }
        expect { result[1] }.not_to be_nil
      end
    end
  end
end