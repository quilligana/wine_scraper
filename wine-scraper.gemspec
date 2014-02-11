# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "wine-scraper/version"

Gem::Specification.new do |s|
  s.name        = 'wine-scraper'
  s.version     = '0.1.0'
  s.licenses    = ['']
  s.summary     = "A gem for scraping information for online wine sales from particular sites."
  s.description = "This gem allows the user to scrape data about wines listed on the corkscrew website."
  s.author      = ["Aidan Quilligan"]
  s.email       = 'a.quilligan@gmail.com'
  s.files       = `git ls-files`.split("\n")
  s.homepage    = ''
  s.require_paths = ["lib"]
end