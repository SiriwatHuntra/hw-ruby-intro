def binary_multiple_of_4? s
  if s.is_a? String
    puts "Program is runed"
    if s.delete('01') == ''
      puts "Input is binary"
      s = s.to_i(2)
      puts s
      return
    else
      puts "You input isn't binary"
    end
  else
    puts "Your input isn't String"
  end
end

binary_multiple_of_4?(5)
binary_multiple_of_4?("101")
binary_multiple_of_4?("555")

