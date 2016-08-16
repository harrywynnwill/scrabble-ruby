require_relative 'Anagram'
class Scrabble


    SCORE = {"A"=>1, "B"=>3, "C"=>3, "D"=>2, "E"=>1, "F"=>4, "G"=>2, "H"=>4, "I"=>1, "J"=>8,
   "K"=>5, "L"=>1, "M"=>3, "N"=>1, "O"=>1, "P"=>3, "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
   "U"=>1, "V"=>4, "W"=>4, "X"=>8, "Y"=>4, "Z"=>10}

   attr_reader :rack, :bag

   def initialize
     @bag = []
     @rack = []

   end

   def create_bag
    12.times { @bag << "E" }
    9.times { @bag << "A" && @bag << "I"}
    8.times { @bag << "O"}
    6.times { @bag << "N" && @bag << "R" && @bag << "T"}
    4.times { @bag << "L" && @bag << "S"&& @bag << "U" && @bag << "D"}
    3.times { @bag << "G"}
    2.times do @bag << "B" && @bag << "C" && @bag << "M" && @bag << "P" &&
      @bag << "F" && @bag << "H" && @bag << "V" && @bag << "W" && @bag << "Y"
    end
    1.times { @bag << "K" && @bag << "J" && @bag << "X" && @bag << "Q" && @bag << "Z"}
   end


   def assign_tiles
     shuffle_bag
     7.times {assign_tile}
   end

   def assign_tile
     @rack << @bag.shift
   end

   def shuffle_bag
    @bag.shuffle!
   end

   def get_words anagram = Anagram.new
      rack = @rack.join("").downcase
      p rack
      anagram.file_to_array
      anagram.permutations rack
      anagram.words
      anagram.matches
   end

   def score(word)
    scores = SCORE.values_at(*word.upcase.chars)
    scores.compact.reduce(0, :+)
  end

 end
