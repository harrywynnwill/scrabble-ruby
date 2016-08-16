class Anagram

  DICTIONARY = "./public/twl06.txt"
  attr_reader :results, :matches

  def initialize
    @results = []
    @matches = []
  end

  def search
    @results.each do |word|
      File.open(DICTIONARY) do |f|
        f.any? do |line|
          line.strip!
          @matches << word if line == word
        end
      end
    end
    @matches
  end

  def permutations length, word
    @results = (length..7).flat_map{|n| word.chars.to_a.permutation(n).map(&:join)}.uniq
  end
end
