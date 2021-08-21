def substrings(string, dictionary)
   match = Hash.new(0)
   dictionary.each do | word |
    match[word] = string.downcase.scan(word).count if string.downcase.include?(word)
   end
   return match
end

def sub_strings(string, dictionary)
   dict = Hash.new(0)
   string = string.downcase
   i = 0
   while i < string.length do
      j = i + 1
      while j < string.length do
         possible_word = string[i, j-i]
         if dictionary.include?(possible_word)
            dict[possible_word]+=1
         end
         j += 1
      end
      i += 1
   end
   return dict
end

def sub_string_test(string, dictionary)
   dict = Hash.new(0)
   string_array = string.downcase.gsub(/[^a-z0-9\s]/i, '').split(" ")
   string_array.each do | string |
      i = 0
      while i < string.length do
         j = 0
         while j < string.length do
            possible_word = string[i, j+1]
            if dictionary.include?(possible_word)
               dict[possible_word] += 1
            end
            j += 1
         end
         i += 1
      end
   end
   return dict
end
   
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)