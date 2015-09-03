require 'rspec'
require 'card'

describe Card do
  describe '#initialize' do
    context "when the card is initialized" do
      context "when the suit is invalid" do
        it 'raises an error' do
        expect {Card.new(:plants, :deuce)}.to raise_error
        end
      context "when the value is invalid" do
        it 'raises an error' do
            expect {Card.new(:clubs, 14)}.to raise_error
        end
      end
    end
  end
end
  describe "#to_s" do
    it 'Converts card suit and value to a string' do
      new_card = Card.new(:clubs, :ace)
      expect(new_card.to_s).to eq('A♣')
    end
  end
end
