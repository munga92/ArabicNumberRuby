#Converts arabic numbers to words by recieving a user given input.
def num_to_words(int)
  #string keys for matching number with it's word equivalent.
  convert_keys = {
      1000000 => "million",
      1000 => "thousand",
      100 => "hundred",
      90 => "ninety",
      80 => "eighty",
      70 => "seventy",
      60 => "sixty",
      50 => "fifty",
      40 => "forty",
      30 => "thirty",
      20 => "twenty",
      19=>"nineteen",
      18=>"eighteen",
      17=>"seventeen", 
      16=>"sixteen",
      15=>"fifteen",
      14=>"fourteen",
      13=>"thirteen",              
      12=>"twelve",
      11 => "eleven",
      10 => "ten",
      9 => "nine",
      8 => "eight",
      7 => "seven",
      6 => "six",
      5 => "five",
      4 => "four",
      3 => "three",
      2 => "two",
      1 => "one"
    }
  str = ""
  #Going through the convert_keys array with an each until it matches the desired number; If the match is 0 it will return an empty string, if it's 1 or bigger than 1 will return a key, etc.
  convert_keys.each do |num, name|
    if int == 0
      return str
    elsif int.to_s.length == 1 && int/num > 0
      return str + "#{name}"      
    elsif int < 100 && int/num > 0
      return str + "#{name}" if int%num == 0
      return str + "#{name} " + num_to_words(int%num)
    elsif int/num > 0
      return str + num_to_words(int/num) + " #{name} " + num_to_words(int%num)
    end
  end
end

#console input and puts for showing the result.

puts 'Insert a number to convert: '
req_number = gets.to_i
puts 'Your converted number is: '
puts num_to_words(req_number)


