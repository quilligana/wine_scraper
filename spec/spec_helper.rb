require 'rubygems'
require 'capybara/rspec'
require 'wine_scraper'
require 'fakeweb'
# include WebMock::API
# WebMock.disable_net_connect!(allow_localhost: true)
# RSpec.configure do |config|
#     config.include WebMock::API
#     config.include WebMock::Matchers
# 	  config.before(:each) do
# 	    stub_request(:get, "http://www.thecorkscrew.ie/red-wine.html?limit=all").
#         with(:headers => {'Accept'=>'*/*', 'User-Agent'=>'Ruby'}).
# 		    to_return(:status => 200, :body => File.open(File.dirname(__FILE__) + '/support/fixtures/corkscrew-red.html').read, :headers => {})
# 	  end
# end

FakeWeb.register_uri(:get, "http://www.thecorkscrew.ie/red-wine.html?limit=all",
                     :body => File.open(File.dirname(__FILE__) + '/support/fixtures/corkscrew-red.html').read,
                     :status => ["200", "Ok"])