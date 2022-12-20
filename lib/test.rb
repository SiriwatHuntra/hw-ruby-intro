def vowelOrConsonant(x)
  consonant_array = "b c d f g h j k l m n p q r s t v x y z".split
  puts consonant_array
  if (consonant_array.include? x[0,1])
      print("consonant \n")
  else
      print("it not consonant \n")
  end
end

vowelOrConsonant('c')
vowelOrConsonant('E')
