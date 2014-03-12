# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "wine_scraper/version"

Gem::Specification.new do |s|
  s.name          = 'wine_scraper'
  s.version       = WineScraper::VERSION
  s.authors       = ["Aidan Quilligan"]
  s.email         = ["a.quilligan@gmail.com"]
  s.license       = "MIT"
  s.summary       = "A gem for scraping information for online wine sales from particular sites."
  s.description   = "This gem allows the user to scrape data about wines listed on the corkscrew website."
  s.homepage      = ""

  s.files         = `git ls-files`.split($/)
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "nokogiri", "~> 1.6.1" 

  s.add_development_dependency "bundler", "~> 1.3"
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec", "~> 2.14.1"
  s.add_development_dependency "fakeweb", "~> 1.3.0"

end