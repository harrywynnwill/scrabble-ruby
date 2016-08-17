require 'scrabble'
describe Scrabble do
  let(:scrabble) {described_class.new}
  let(:anagram) { double("anagram")}
  let(:rack) { double("rack") }

  before(:each) do
    scrabble.new_game
  end
  describe "#new_game" do
    it "creates a scrabble bag with the correct distribution of letters shuffles and adds 7 to the rack" do
      expect(scrabble.bag.length).to eq 91
      expect(scrabble.rack.length).to eq 7
    end
  end
  describe "#get_words" do
    it "it returns all the possible words that can be produced from rack" do
      allow(anagram).to receive(:anagram_results).and_return(["anagram", "hell", "sleeps"])
      scrabble.get_words anagram
      expect(anagram).to have_received(:anagram_results)
      expect(scrabble.possible_words).to eq ["anagram", "hell", "sleeps"]
    end
  end
  describe "#highest_possibe_score" do
    it "returns the highest score from the rack" do
      allow(anagram).to receive(:anagram_results).and_return(["longword", "jinx", "sleeps"])
      scrabble.get_words anagram
      expect(scrabble.highest_possibe_score).to eq "jinx"
    end
  end
  describe "#longest_valid_word" do
    it "returns the longest word from the possible rack" do
      allow(anagram).to receive(:anagram_results).and_return(["longword", "hell", "sleeps"])
      scrabble.get_words anagram
      expect(scrabble.longest_valid_word).to eq "longword"
    end
  end
end
