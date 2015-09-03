require 'deck'

class Hand

    attr_reader :cards

    def initialize(deck)
      @deck = deck
      @cards = deck.draw(5)
    end

    def to_s

    end

end
