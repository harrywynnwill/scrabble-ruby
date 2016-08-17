require './lib/anagram.rb'
describe Anagram do
  let(:anagram) {described_class.new}

  describe "#anagram_results" do
    it "creates a dictionary, creates all the possible permutations of a word and cross references them" do
      expect(anagram.anagram_results "the").to eq ["eh", "et", "eth", "he", "het", "the"]
    end
  end
end
