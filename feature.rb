require "./lib/scrabble.rb"
harry = Scrabble.new
harry.new_game
harry.rack
harry.get_words
harry.highest_possibe_score
harry.longest_valid_word


require "./lib/anagram.rb"
anagram = Anagram.new
anagram.file_to_array
anagram.permutations "weather"
anagram.words
