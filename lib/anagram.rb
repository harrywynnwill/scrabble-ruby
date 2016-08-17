class Anagram

  DICTIONARY = "./public/twl06.txt"

  def initialize
    @results = []
    @matches = []
    @dictionary = []
  end

  def anagram_results word
    file_to_array
    permutations word
    return words
  end

private

  def file_to_array
    @dictionary = File.foreach(DICTIONARY).map { |line| line.chomp }
  end

  def permutations word
    @results = (2..7).flat_map{|n| word.chars.to_a.permutation(n).map(&:join)}.uniq
  end

  def words
    @matches = @dictionary & @results
  end
end
