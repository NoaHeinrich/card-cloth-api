require 'HTTParty'
require 'Nokogiri'
require 'Pry'
page = HTTParty.get("https://labyrinthos.co/blogs/tarot-card-meanings-list")

card_names = Nokogiri::HTML(page).css(".card").css("h3").map { |c| c.text.strip.delete_suffix(" Meaning") }
card_descs = Nokogiri::HTML(page).css(".card").css(".rte").map { |c| c.text.strip }
binding.pry
