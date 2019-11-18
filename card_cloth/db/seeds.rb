# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'HTTParty'
require 'Nokogiri'
# require 'Pry'
Card.destroy_all
page = HTTParty.get("https://labyrinthos.co/blogs/tarot-card-meanings-list")

card_names = Nokogiri::HTML(page).css(".card").css("h3").map { |c| c.text.strip.delete_suffix(" Meaning") }
card_descs = Nokogiri::HTML(page).css(".card").css(".rte").map { |c| c.text.strip }
parsed_descs = card_descs.map do |card|
  array = card.split(",")
  array[0].delete_prefix!("Upright: ")
  array[3].delete_prefix!(" Reversed: ")
  [array[0..2].join(" "), array[3..-1].join(" ")]
end
card_names.each_with_index do |name, index|
  Card.create(name: name, upright: parsed_descs[index][0], reversed: parsed_descs[index][1])
end
