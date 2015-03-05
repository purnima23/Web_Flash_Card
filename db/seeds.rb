require 'csv'

  @deck = Deck.create(d_title: "English to Malay Dictionary")

  @file = File.open("db/english_malay.txt")
  @file.each do |x|
     words = x.split(" ")
  @card =   Card.create(question: words.first, answer: words.last, deck_id: Deck.last.id)
end

