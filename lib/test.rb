def vowelOrConsonant(s)
  s = s.to_s.downcase
  (s[0,1].match?(/\A-?\d+\Z/))? print("consonant \n") : print("it not consonant \n")
end

vowelOrConsonant('c')
vowelOrConsonant('E')
vowelOrConsonant(555)
