class Deck

  attr_reader :all_cards

  def initialize
    @all_cards = []
    Card.suits.each do |suit|
      Card.values.each do |value|
        all_cards << Card.new(suit, value)
      end
    end
    all_cards.shuffle
  end

  def draw(num = 1)
    drawn_cards = []
    num.times { drawn_cards << all_cards.shift }
    drawn_cards
  end



end
