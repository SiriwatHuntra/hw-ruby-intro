def binary_multiple_of_4? s
  if s.is_a? String && s.chr.each {|x| x == "1" || x == "0" }
    puts "Program is runed"

  else
    puts "Your input isn't Integer"
  end
end

binary_multiple_of_4?(5)
binary_multiple_of_4?("10101")
binary_multiple_of_4?("555")

