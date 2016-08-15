class Anagram




  words = Hash.new([])

  File.open("public/twl06.txt", "r") do |file|
    while line = file.gets
      word = line.chomp
      words[word.split('').sort!.join('')] += [word]
    end
  end

  File.open("word_hash", "w") do |file|
    Marshal.dump(words, file)
  end




  

end
