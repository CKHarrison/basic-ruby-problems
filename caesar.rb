require 'pry-byebug'

def caesar_cipher(string, shifter)
  result = ""
  string.each_char do |char|
    if char.ord == 32
      result += " "
    end
    if char.ord.between?(95, 122) || char.ord.between?(65,90)
      encoded = char.ord + shifter
      if (encoded > 91 and char.ord < 91) || encoded > 122
        encoded -= 26
        result += encoded.chr
      else
        result += encoded.chr
      end
    end
  end
  result
end

encoded_string = caesar_cipher("What a string!", 5)
puts encoded_string