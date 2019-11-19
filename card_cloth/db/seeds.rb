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
#Add Number, img_url, and suit to each Major Arcana
Card.find_by(name: "The Fool").update(number: 0, img_url: "http://www.learntarot.com/maj00s.gif", suit: "Major")
Card.find_by(name: "The Magician").update(number: 1, img_url: "http://www.learntarot.com/maj01s.gif", suit: "Major")
Card.find_by(name: "The High Priestess").update(number: 2, img_url: "http://www.learntarot.com/maj02s.gif", suit: "Major")
Card.find_by(name: "The Empress").update(number: 3, img_url: "http://www.learntarot.com/maj03s.gif", suit: "Major")
Card.find_by(name: "The Emperor").update(number: 4, img_url: "http://www.learntarot.com/maj04s.gif", suit: "Major")
Card.find_by(name: "The Hierophant").update(number: 5, img_url: "http://www.learntarot.com/maj05s.gif", suit: "Major")
Card.find_by(name: "The Lovers").update(number: 6, img_url: "http://www.learntarot.com/maj06s.gif", suit: "Major")
Card.find_by(name: "The Chariot").update(number: 7, img_url: "http://www.learntarot.com/maj07s.gif", suit: "Major")
Card.find_by(name: "Strength").update(number: 8, img_url: "http://www.learntarot.com/maj08s.gif", suit: "Major")
Card.find_by(name: "The Hermit").update(number: 9, img_url: "http://www.learntarot.com/maj09s.gif", suit: "Major")
Card.find_by(name: "The Wheel of Fortune").update(number: 10, img_url: "http://www.learntarot.com/maj10s.gif", suit: "Major")
Card.find_by(name: "Justice").update(number: 11, img_url: "http://www.learntarot.com/maj11s.gif", suit: "Major")
Card.find_by(name: "The Hanged Man").update(number: 12, img_url: "http://www.learntarot.com/maj12s.gif", suit: "Major")
Card.find_by(name: "Death").update(number: 13, img_url: "http://www.learntarot.com/maj13s.gif", suit: "Major")
Card.find_by(name: "Temperance").update(number: 14, img_url: "http://www.learntarot.com/maj14s.gif", suit: "Major")
Card.find_by(name: "The Devil").update(number: 15, img_url: "http://www.learntarot.com/maj15s.gif", suit: "Major")
Card.find_by(name: "The Tower").update(number: 16, img_url: "http://www.learntarot.com/maj16s.gif", suit: "Major")
Card.find_by(name: "The Star").update(number: 17, img_url: "http://www.learntarot.com/maj17s.gif", suit: "Major")
Card.find_by(name: "The Moon").update(number: 18, img_url: "http://www.learntarot.com/maj18s.gif", suit: "Major")
Card.find_by(name: "The Sun").update(number: 19, img_url: "http://www.learntarot.com/maj19s.gif", suit: "Major")
Card.find_by(name: "Judgement").update(number: 20, img_url: "http://www.learntarot.com/maj20s.gif", suit: "Major")
Card.find_by(name: "The World").update(number: 21, img_url: "http://www.learntarot.com/maj21s.gif", suit: "Major")
# Add number, img_url, and suit to Wands
Card.find_by(name: "Ace of Wands").update(number: 1, img_url: "http://www.learntarot.com/was.gif", suit: "Wands")
Card.find_by(name: "Two of Wands").update(number: 2, img_url: "http://www.learntarot.com/w2s.gif", suit: "Wands")
Card.find_by(name: "Three of Wands").update(number: 3, img_url: "http://www.learntarot.com/w3s.gif", suit: "Wands")
Card.find_by(name: "Four of Wands").update(number: 4, img_url: "http://www.learntarot.com/w4s.gif", suit: "Wands")
Card.find_by(name: "Five of Wands").update(number: 5, img_url: "http://www.learntarot.com/w5s.gif", suit: "Wands")
Card.find_by(name: "Six of Wands").update(number: 6, img_url: "http://www.learntarot.com/w6s.gif", suit: "Wands")
Card.find_by(name: "Seven of Wands").update(number: 7, img_url: "http://www.learntarot.com/w7s.gif", suit: "Wands")
Card.find_by(name: "Eight of Wands").update(number: 8, img_url: "http://www.learntarot.com/w8s.gif", suit: "Wands")
Card.find_by(name: "Nine of Wands").update(number: 9, img_url: "http://www.learntarot.com/w9s.gif", suit: "Wands")
Card.find_by(name: "Ten of Wands").update(number: 10, img_url: "http://www.learntarot.com/w10s.gif", suit: "Wands")
Card.find_by(name: "Page of Wands").update(number: 11, img_url: "http://www.learntarot.com/wpgs.gif", suit: "Wands")
Card.find_by(name: "Knight of Wands").update(number: 12, img_url: "http://www.learntarot.com/wkns.gif", suit: "Wands")
Card.find_by(name: "Queen of Wands").update(number: 13, img_url: "http://www.learntarot.com/wqns.gif", suit: "Wands")
Card.find_by(name: "King of Wands").update(number: 14, img_url: "http://www.learntarot.com/wkgs.gif", suit: "Wands")
#Updating Swords
Card.find_by(name: "Ace of Swords").update(number: 1, img_url: "http://www.learntarot.com/sas.gif", suit: "Swords")
Card.find_by(name: "Two of Swords").update(number: 2, img_url: "http://www.learntarot.com/s2s.gif", suit: "Swords")
Card.find_by(name: "Three of Swords").update(number: 3, img_url: "http://www.learntarot.com/s3s.gif", suit: "Swords")
Card.find_by(name: "Four of Swords").update(number: 4, img_url: "http://www.learntarot.com/s4s.gif", suit: "Swords")
Card.find_by(name: "Five of Swords").update(number: 5, img_url: "http://www.learntarot.com/s5s.gif", suit: "Swords")
Card.find_by(name: "Six of Swords").update(number: 6, img_url: "http://www.learntarot.com/s6s.gif", suit: "Swords")
Card.find_by(name: "Seven of Swords").update(number: 7, img_url: "http://www.learntarot.com/s7s.gif", suit: "Swords")
Card.find_by(name: "Eight of Swords").update(number: 8, img_url: "http://www.learntarot.com/s8s.gif", suit: "Swords")
Card.find_by(name: "Nine of Swords").update(number: 9, img_url: "http://www.learntarot.com/s9s.gif", suit: "Swords")
Card.find_by(name: "Ten of Swords").update(number: 10, img_url: "http://www.learntarot.com/s10s.gif", suit: "Swords")
Card.find_by(name: "Page of Swords").update(number: 11, img_url: "http://www.learntarot.com/spgs.gif", suit: "Swords")
Card.find_by(name: "Knight of Swords").update(number: 12, img_url: "http://www.learntarot.com/skns.gif", suit: "Swords")
Card.find_by(name: "Queen of Swords").update(number: 13, img_url: "http://www.learntarot.com/sqns.gif", suit: "Swords")
Card.find_by(name: "King of Swords").update(number: 14, img_url: "http://www.learntarot.com/skgs.gif", suit: "Swords")
#Updating Cups
Card.find_by(name: "Ace of Cups").update(number: 1, img_url: "http://www.learntarot.com/cas.gif", suit: "Cups")
Card.find_by(name: "Two of Cups").update(number: 2, img_url: "http://www.learntarot.com/c2s.gif", suit: "Cups")
Card.find_by(name: "Three of Cups").update(number: 3, img_url: "http://www.learntarot.com/c3s.gif", suit: "Cups")
Card.find_by(name: "Four of Cups").update(number: 4, img_url: "http://www.learntarot.com/c4s.gif", suit: "Cups")
Card.find_by(name: "Five of Cups").update(number: 5, img_url: "http://www.learntarot.com/c5s.gif", suit: "Cups")
Card.find_by(name: "Six of Cups").update(number: 6, img_url: "http://www.learntarot.com/c6s.gif", suit: "Cups")
Card.find_by(name: "Seven of Cups").update(number: 7, img_url: "http://www.learntarot.com/c7s.gif", suit: "Cups")
Card.find_by(name: "Eight of Cups").update(number: 8, img_url: "http://www.learntarot.com/c8s.gif", suit: "Cups")
Card.find_by(name: "Nine of Cups").update(number: 9, img_url: "http://www.learntarot.com/c9s.gif", suit: "Cups")
Card.find_by(name: "Ten of Cups").update(number: 10, img_url: "http://www.learntarot.com/c10s.gif", suit: "Cups")
Card.find_by(name: "Page of Cups").update(number: 11, img_url: "http://www.learntarot.com/cpgs.gif", suit: "Cups")
Card.find_by(name: "Knight of Cups").update(number: 12, img_url: "http://www.learntarot.com/ckns.gif", suit: "Cups")
Card.find_by(name: "Queen of Cups").update(number: 13, img_url: "http://www.learntarot.com/cqns.gif", suit: "Cups")
Card.find_by(name: "King of Cups").update(number: 14, img_url: "http://www.learntarot.com/ckgs.gif", suit: "Cups")
#Updating pentacles
Card.find_by(name: "Ace of Pentacles").update(number: 1, img_url: "http://www.learntarot.com/pas.gif", suit: "Pentacles")
Card.find_by(name: "Two of Pentacles").update(number: 2, img_url: "http://www.learntarot.com/p2s.gif", suit: "Pentacles")
Card.find_by(name: "Three of Pentacles").update(number: 3, img_url: "http://www.learntarot.com/p3s.gif", suit: "Pentacles")
Card.find_by(name: "Four of Pentacles").update(number: 4, img_url: "http://www.learntarot.com/p4s.gif", suit: "Pentacles")
Card.find_by(name: "Five of Pentacles").update(number: 5, img_url: "http://www.learntarot.com/p5s.gif", suit: "Pentacles")
Card.find_by(name: "Six of Pentacles").update(number: 6, img_url: "http://www.learntarot.com/p6s.gif", suit: "Pentacles")
Card.find_by(name: "Seven of Pentacles").update(number: 7, img_url: "http://www.learntarot.com/p7s.gif", suit: "Pentacles")
Card.find_by(name: "Eight of Pentacles").update(number: 8, img_url: "http://www.learntarot.com/p8s.gif", suit: "Pentacles")
Card.find_by(name: "Nine of Pentacles").update(number: 9, img_url: "http://www.learntarot.com/p9s.gif", suit: "Pentacles")
Card.find_by(name: "Ten of Pentacles").update(number: 10, img_url: "http://www.learntarot.com/p10s.gif", suit: "Pentacles")
Card.find_by(name: "Page of Pentacles").update(number: 11, img_url: "http://www.learntarot.com/ppgs.gif", suit: "Pentacles")
Card.find_by(name: "Knight of Pentacles").update(number: 12, img_url: "http://www.learntarot.com/pkns.gif", suit: "Pentacles")
Card.find_by(name: "Queen of Pentacles").update(number: 13, img_url: "http://www.learntarot.com/pqns.gif", suit: "Pentacles")
Card.find_by(name: "King of Pentacles").update(number: 14, img_url: "http://www.learntarot.com/pkgs.gif", suit: "Pentacles")