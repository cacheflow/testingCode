require "nokogiri"
require "reverse_markdown"
require "open-uri"

page = Nokogiri::HTML(open("http://ebay.com"))

ebay = File.new("ebay.html", "w+")

ebay << page
open_ebay = File.open(ebay)

system reverse_markdown "ebay.html" > "ebay.md"

	