class Anagram

  DICTIONARY = "./public/twl06.txt"
  attr_reader :results, :matches, :dictionary

  def initialize
    @results = []
    @matches = []
    @dictionary = []
  end


  def anagram_results word
    file_to_array
    permutations word
    words
  end

  def file_to_array
    @dictionary = File.foreach(DICTIONARY).map { |line| line.chomp }
  end
  #
  # def search
  #   @results.each do |word|
  #     File.open(DICTIONARY) do |f|
  #       f.any? do |line|
  #         line.strip!
  #         @matches << word if line == word
  #       end
  #     end
  #   end
  #   @matches
  # end

  def permutations word
    @results = (2..7).flat_map{|n| word.chars.to_a.permutation(n).map(&:join)}.uniq
  end

  def words
    @matches = @dictionary & @results
  end
end
