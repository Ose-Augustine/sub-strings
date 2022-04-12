require 'pry-byebug'
def substrings(string,dictionary)
    string_now_array=string.split
    string=string.downcase
    substrings_present=dictionary.select {|elements| string.include?(elements)}
    substrings_present.reduce(Hash.new(0)) do |result,value|
        result[value]=string.scan(value).length
        p result
    end

    # substrings_present.each {|element| p string.count(element)}
    # binding.pry
end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings('below',dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)