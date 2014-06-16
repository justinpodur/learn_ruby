VOWELS = %w[a e i o u y]

def translate(words)
  words.split(/\W/).map do |word|
    until VOWELS.include?(word[0])
      word += word[0,2] == "qu" ? word.slice!(0, 2) : word.slice!(0)
    end
    word + "ay"
  end.join(" ")
end