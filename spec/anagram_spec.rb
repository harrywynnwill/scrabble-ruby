require 'Anagram'
describe Anagram do
  let(:anagram) {described_class.new}

  describe "#permutations" do
    context "with a five letter word with individual letters 5*4*3*2*1 = 120" do
      it "creates all permutations of letters" do
        anagram.permutations 5, "their"
        expect(anagram.results.length).to eq 120
      end
    end
  end



end
