def binary_multiple_of_4? s
  if s.is_a? String
    if s.delete('01') == ''
      return 0 == (s.to_i(2))%4
    else
      return false
    end
  else
    return false
  end
end

binary_multiple_of_4?(5)
binary_multiple_of_4?("101")
binary_multiple_of_4?("100")

