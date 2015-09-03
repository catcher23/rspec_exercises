require 'rspec'
require 'hand'

describe Hand do
  subject(:hand) { Hand.new(Deck.new) }
  describe "#initialize" do
    context "when hand is initialized" do
      it "should 5 cards" do
        expect { hand.cards.count }.to be(5)
      end
    end
  end

  describe "#to_s" do
    context "when to_s is called" do
      it "returns an array" do
        expect(hand.to_s).to be_an(Array)
      end
      it "returns the values and suits of the cards in an array"
        let(:sample_deck) { double ("sample_deck"), draw(5):
          [Card.new(:clubs, :ace), Card.new(:clubs, :king),
           Card.new(:spades, :ten), Card.new(:hearts, :eight),
           Card.new(:diamonds, :ten)] }
        expect(Hand.new(sample_deck).to_s).to eq(["A♣", "K♣", "10♠", "8♥", "10♠"])
    end
  end
  describe "poker_hand" do
    context "when hand is a Royal Flush" do
      it "returns :royal_flush" do
        let(:sample_deck) { double ("sample_deck"), draw(5):
          [Card.new(:clubs, :ace), Card.new(:clubs, :king),
           Card.new(:clubs, :queen), Card.new(:clubs, :jack),
           Card.new(:clubs, :ten)] }
        expect(Hand.new(sample_deck).poker_hand).to eq(:royal_flush)
      end
    end

    context "when hand is a Straight Flush" do
      it "returns :straight_flush" do
        let(:sample_deck) { double ("sample_deck"), draw(5):
          [Card.new(:clubs, :nine), Card.new(:clubs, :king),
           Card.new(:clubs, :queen), Card.new(:clubs, :jack),
           Card.new(:clubs, :ten)] }
        expect(Hand.new(sample_deck).poker_hand).to eq(:straight_flush)
      end
    end
    context "when hand is a Four of a Kind" do
      it "returns :four_of_a_kind" do
        let(:sample_deck) { double ("sample_deck"), draw(5):
          [Card.new(:clubs, :ace), Card.new(:diamonds, :ace),
           Card.new(:spades, :ace), Card.new(:hearts, :ace),
           Card.new(:clubs, :ten)] }
        expect(Hand.new(sample_deck).poker_hand).to eq(:four_of_a_kind)
      end
    end
    context "when hand is a Full House" do
      it "returns :full_house" do
        let(:sample_deck) { double ("sample_deck"), draw(5):
          [Card.new(:clubs, :ace), Card.new(:diamonds, :ace),
           Card.new(:spades, :ace), Card.new(:hearts, :ten),
           Card.new(:clubs, :ten)] }
        expect(Hand.new(sample_deck).poker_hand).to eq(:full_house)
      end
    end
    context "when hand is a Flush" do
      it "returns :flush" do
        let(:sample_deck) { double ("sample_deck"), draw(5):
          [Card.new(:clubs, :nine), Card.new(:clubs, :king),
           Card.new(:clubs, :two), Card.new(:clubs, :jack),
           Card.new(:clubs, :ten)] }
        expect(Hand.new(sample_deck).poker_hand).to eq(:flush)
      end
    end
    context "when hand is a Straight" do
      it "returns :straight" do
        let(:sample_deck) { double ("sample_deck"), draw(5):
          [Card.new(:clubs, :nine), Card.new(:hearts, :king),
           Card.new(:clubs, :queen), Card.new(:clubs, :jack),
           Card.new(:clubs, :ten)] }
        expect(Hand.new(sample_deck).poker_hand).to eq(:straight)
      end
    end
    context "when hand is a Three of a Kind" do
      it "returns :three_of_a_kind" do
        let(:sample_deck) { double ("sample_deck"), draw(5):
          [Card.new(:clubs, :ace), Card.new(:diamonds, :ace),
           Card.new(:spades, :ace), Card.new(:hearts, :nine),
           Card.new(:clubs, :ten)] }
        expect(Hand.new(sample_deck).poker_hand).to eq(:three_of_a_kind)
      end
    end
    context "when hand is Two Pairs" do
      it "returns :two_pairs" do
        let(:sample_deck) { double ("sample_deck"), draw(5):
          [Card.new(:clubs, :ace), Card.new(:diamonds, :ace),
           Card.new(:spades, :nine), Card.new(:hearts, :nine),
           Card.new(:clubs, :ten)] }
        expect(Hand.new(sample_deck).poker_hand).to eq(:two_pairs)
      end
    end
    context "when hand is a One Pair" do
      it "returns :one_pair" do
        let(:sample_deck) { double ("sample_deck"), draw(5):
          [Card.new(:clubs, :ace), Card.new(:diamonds, :ace),
           Card.new(:spades, :five), Card.new(:hearts, :nine),
           Card.new(:clubs, :ten)] }
        expect(Hand.new(sample_deck).poker_hand).to eq(:one_pair)
      end
    end
    context "when hand is a No Hand" do
      it "returns :no_hand" do

      end
    end
  end

  describe "#values" do
    context "when #values is called" do
      it "returns an array of values" do

      end
    end
  end

  describe "#suits" do
    context "when #suits is called" do
      it "returns an array of suits" do

      end
    end
  end

  describe "#compare_hands" do
    context "when self hand is different from other hand" do
      it "returns the better hand" do

      end

    end

    context 'when the hands are both straights' do
      it 'returns the higher straight if one exists' do

      end

      it 'returns nil if straights are different suits but same value' do

      end
    end

    context 'when both hands have 1 pair' do
      it 'returns the higher pair if one exists' do

      end

      it 'returns the hand with highest side card if pair is same' do

      end
    end

    context 'when both hands are a no_hand' do
      it 'return the hand with highest side card' do

      end
    end
  end
end
