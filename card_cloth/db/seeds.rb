# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Card.create(
  [
    {
      name: "The Fool",
      suit: "Major",
      number: 0,
      desc: "A young man, walking unknowingly toward the brink of a precipice. In the Rider-Waite deck, he is also portrayed as having with him a small dog. The Fool holds a white rose (a symbol of freedom from baser desires) in one hand, and in the other a small bundle of possessions, representing untapped collective knowledge.",
      upright: "beginnings, innocence, spontaneity, a free spirit",
      reversed: "holding back, recklessness, risk-taking",
      img_url: "https://upload.wikimedia.org/wikipedia/en/thumb/9/90/RWS_Tarot_00_Fool.jpg/220px-RWS_Tarot_00_Fool.jpg"
    },
    {
      name: "The Magician",
      suit: "Major",
      number: 1,
      upright: "Manifestation, resourcefulness, power, inspired action",
      reversed: "Manipulation, poor planning, untapped talents",
      img_url: "https://upload.wikimedia.org/wikipedia/en/thumb/d/de/RWS_Tarot_01_Magician.jpg/150px-RWS_Tarot_01_Magician.jpg"
    },
    {
      name: "The High Priestess",
      suit: "Major",
      number: 2,
      upright: "Secrets, disconnected from intuition, withdrawal and silence",
      reversed: "Manipulation, poor planning, untapped talents",
      img_url: "https://upload.wikimedia.org/wikipedia/en/thumb/d/de/RWS_Tarot_02_High_Priestess.jpg/150px-RWS_Tarot_02_High_Priestess.jpg"
    },
    {
      name: "The Empress",
      suit: "Major",
      number: 3,
      upright: "Femininity, beauty, nature, nurturing, abundance",
      reversed: "Creative block, dependence on others",
      img_url: "https://upload.wikimedia.org/wikipedia/en/thumb/d/de/RWS_Tarot_03_Empress.jpg/150px-RWS_Tarot_03_Empress.jpg"
    },
    {
      name: "The Emperor",
      suit: "Major",
      number: 4,
      upright: "Authority, establishment, structure, a father figure",
      reversed: "Domination, excessive control, lack of discipline, inflexibility",
      img_url: "https://upload.wikimedia.org/wikipedia/en/thumb/d/de/RWS_Tarot_04_Emperor.jpg/150px-RWS_Tarot_04_Emperor.jpg"
    },
    {
      name: "The Hierophant",
      suit: "Major",
      number: 5,
      upright: "Authority, establishment, structure, a father figure",
      reversed: "Domination, excessive control, lack of discipline, inflexibility",
      img_url: "https://upload.wikimedia.org/wikipedia/en/thumb/d/de/RWS_Tarot_04_Emperor.jpg/150px-RWS_Tarot_04_Emperor.jpg"
    },

  ]
)