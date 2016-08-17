require 'Anagram'
describe Anagram do
  let(:anagram) {described_class.new}

  xdescribe "#permutations" do
    context "with a five letter word with individual letters 5*4*3*2*1 = 120 " do
      it "creates all permutations of letters" do
        anagram.permutations "their"
        expect(anagram.results.length).to eq 120
      end
    end
  end




end
