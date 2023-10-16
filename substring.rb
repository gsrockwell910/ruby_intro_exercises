#define dictionary
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

#create substring method
def substring(string, dictionary) 
  #turn string into array and lowercase
  string_array = string.downcase!.split

  #reduce array down to a hash object 
  string_array.reduce(Hash.new(0)) do |hash|
    #look at each word in the defined dictionary
    dictionary.each do |word|
      string.include?(word) ? hash[word] = string.scan(word).count : next
    end
    #return hash
    hash
  end
end

print "Enter a string to compare against our dictionary: "
answer = gets.chomp!

puts substring(answer, dictionary)