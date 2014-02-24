# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "wine-scraper/version"

Gem::Specification.new do |s|
  s.name          = 'wine-scraper'
  s.version       = WineScraper::VERSION
  spec.authors    = ["Aidan Quilligan"]
  spec.email      = ["a.quilligan@gmail.com"]
  s.license       = ['MIT']
  s.summary       = "A gem for scraping information for online wine sales from particular sites."
  s.description   = "This gem allows the user to scrape data about wines listed on the corkscrew website."
  s.homepage      = ''

  s.files         = `git ls-files`.split($/)
  s.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.require_paths = ["lib"]


  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end