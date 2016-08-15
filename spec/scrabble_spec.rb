require 'Scrabble'
describe Scrabble do
  let(:scrabble) {described_class.new}
  let(:score) {{"A"=>1, "B"=>3}}

  before(:each) do
    scrabble.create_bag
  end
  describe "#create_bag" do
    it "creates a scrabble bag with the correct distribution" do
      expect(scrabble.bag.length).to eq 98
    end
  end
  describe "#assign_tiles" do
    it "gives the player 7 random tiles from the bag" do
      scrabble.assign_tiles
      expect(scrabble.bag.length).to eq 91
      expect(scrabble.rack.length).to eq 7
    end
  end
end
