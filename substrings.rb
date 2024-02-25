def substrings(string, dictionary)
    result = Hash.new(0)
    string.downcase!
    
    dictionary.each do |substring|
        count = string.scan(substring.downcase).length
        result[substring] += count if count > 0
    end

    result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
string = "Howdy partner, sit down! How's it going?"

puts substrings(string, dictionary)