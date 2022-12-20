def vowelOrConsonant(s)
  s = s.to_s.downcase
  return s[0,1].match?(/\A-?\d+\Z/)
end

vowelOrConsonant('c')
vowelOrConsonant('E')
vowelOrConsonant(555)
