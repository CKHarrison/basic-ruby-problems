require 'pry-byebug'

def substrings(string, dictionary)
  results = Hash.new(0)
  dictionary.each do |word|
    if string.downcase.include? word.downcase
      results[word] += 1
    end
  end
  results
end

dictionary = ["Below","down","go","going","hOorn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings('below', dictionary)

def substring_two(string, dictionary)
  results = Hash.new(0)
  string_dict = string.split()
  dictionary.each do |word|
    string_dict.each do |string|
      if string.include? word
        results[word] += 1
      end
    end
  end
  results
end

p  substrings("Howdy partner, sit down! How's it going?", dictionary)