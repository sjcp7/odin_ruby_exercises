require 'pry'
def substrings(string, dictionary)
  string_down = string.downcase
  hash = Hash.new
  dictionary.each do |word|
    word_count = string_down.scan(word).length
    hash[word] = word_count unless word_count == 0
  end
  hash    
end

dict  = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit", "below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below", dict)
p substrings("Howdy partner, sit down! How's it going?", dict)
