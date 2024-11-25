# Convert word to array
# loop through dictionary for each word and determine if hash has key
# key exists, iterate value, if not add value 1

def substrings(word, dictionary)
   hash = {} # empty hash to store output
   string_array = word.downcase.split 
   string_array.each do |i| # nested loop to iterate through dictionary for each element
      dictionary.each do |j|
         if i.include?(j)
            if hash.has_key?(j)
               hash[j] += 1
            else hash[j] = 1
            end
         end
      end
   end
   puts hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)

