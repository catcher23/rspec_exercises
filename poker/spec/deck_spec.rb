require 'rspec'
require 'deck'

describe Deck do
  subject(:deck) { Deck.new }
  describe '#initialize' do
    context 'when deck is initialized' do
      it 'should have 52 cards' do
        expect {deck.cards}.to be_an(Array)
        expect {deck.cards.length}.to be(52)
      end
      it 'should have no card repeats (all unique)' do
        all_cards = deck.cards.map(&:to_s)
        expect(all_cards.uniq.length).to be(52)
      end
      it 'shuffles the deck when initialized' do
        deck2 = Deck.new
        expect(deck[0].to_s).to_not eq(deck2[0].to_s)
        expect(deck[-1].to_s).to_not eq(deck2[-1].to_s)
        expect(deck[26].to_s).to_not eq(deck2[26].to_s)
      end
    end
  end

  describe '#draw' do
    context 'when draw is called' do
      subject(:drawn_card) { deck.draw(1) }
      it 'selects the top card in the deck' do
        top_card = deck.cards[0]
        expect(drawn_card).to be(top_card)
      end
      it 'removes a card from the deck' do
        deck.draw(1)
        expect(deck.cards.count).to be(51)
      end
      it 'removes multiple cards when arg > 1' do
        deck.draw(5)
        expect(deck.cards.count).to be(47)
      end
    end
    context 'when the deck is empty' do
      it 'raises an error' do
        expect { deck.draw(53) }.to raise_error
      end
    end
  end

end
