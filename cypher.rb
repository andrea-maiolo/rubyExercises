def caesar (string, n)
  decipher='';
  n = n.to_i
  arrayS = string.split('')
  arrayS.each do |letter|
    letter = letter.ord
      if(letter >= 65 && letter <=90 && n>0 )
        decipher +=((letter + n -65) %26 + 65 ).chr
      elsif(letter >= 65 && letter <=90 && n<0 )
        modul = -(letter + n - 90)
        b = modul%26
        c = -(b-90)
        decipher += c.chr 
      elsif( letter >= 97 && letter <= 122 && n>0)
        decipher += ((letter + n -97) %26 + 97).chr;
      elsif( letter >= 97 && letter <= 122 && n<0)
        modul = -(letter + n - 122)
        b = modul%26
        c = -(b-122)
        decipher += c.chr
      else
        decipher += letter.chr
      end
    end
  puts decipher
end

puts "please give me a word"
userInput = gets.chomp
puts "please insert a number"
uNum = gets.chomp

caesar(userInput, uNum);