require "./lib/scrabble.rb"
harry = Scrabble.new
harry.create_bag
harry.shuffle_bag
harry.assign_tiles
harry.rack
harry.get_words
