require 'rubygems'
require 'spork'
#uncomment the following line to use spork with the debugger
#require 'spork/ext/ruby-debug'
require 'capybara/rspec'
require 'wine-scraper'
require 'webmock/rspec'
WebMock.disable_net_connect!(allow_localhost: true)
RSpec.configure do |config|
	  config.before(:each) do
	    stub_request(:get, "http://www.thecorkscrew.ie/red-wine.html?limit=all").
		    to_return(:body => File.open(File.dirname(__FILE__) + '/support/fixtures/corkscrew-red.html').read, 
		    	status: 200)
	  end
end