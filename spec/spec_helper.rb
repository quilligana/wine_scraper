require 'rubygems'
require 'capybara/rspec'
require 'wine_scraper'
require 'webmock/rspec'
WebMock.disable_net_connect!(allow_localhost: true)
RSpec.configure do |config|
	  config.before(:each) do
	    stub_request(:get, "http://www.thecorkscrew.ie/red-wine.html?limit=all").
        with(:headers => {'Accept'=>'*/*', 'User-Agent'=>'Ruby'}).
		    to_return(status: 200, :body => File.open(File.dirname(__FILE__) + '/support/fixtures/corkscrew-red.html').read, :headers => {})
	  end
end