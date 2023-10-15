#define dictionary
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

#create substring method
def substring(string, dictionary) 
  #turn string into array and transform to lowercase
  string_array = string.downcase!.split

  #reduce array down to a hash object with 
  string_array.reduce(Hash.new(0)) do |hash|
    #look at each word in the defined dictionary
    dictionary.each do |word|
      #if user given string contains a word in the defined dictionary set hash key to that word,
      #and value to the number of matches returned by string#scan(word)#count. if not move on
      string.include?(word) ? hash[word] = string.scan(word).count : next
    end
    #return hash (implicit)
    hash
  end
end

print "Enter a string to compare against our dictionary: "
answer = gets.chomp!

puts substring(answer, dictionary)