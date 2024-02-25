def substrings(string, dictionary)
    result = Hash.new(0) # We create a new, empty hash called 'result'
    string.downcase! # The starting string is converted to lowercase.
    
    dictionary.each do |substring| # We iterate through each word in the 'dictionary'.
        count = string.scan(substring.downcase).length # Here we scan for the word in the string and return the number of times it is found.
        result[substring] += count if count > 0 # if a word is found more than zero times then it is added to the hash AND th enumber of instances is concatenated onto it.
    end

    result # The result is printed.
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
string = "Howdy partner, sit down! How's it going?"

puts substrings(string, dictionary)