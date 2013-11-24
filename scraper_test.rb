# encoding: utf-8
require 'rubygems'
require 'nokogiri'
require 'open-uri'

url = 'http://www.thecorkscrew.ie/red-wine.html?limit=all'
doc = Nokogiri::HTML(open(url))

puts doc.at_css("title").text


doc.css(".item").each do |item|
	title = item.at_css(".product-name").text
	price = item.at_css(".price").text[/[0-9\.]+/]
	puts "#{title} - Euro #{price}"
end