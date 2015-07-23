def is_vowel?(char)
  ["a","e","i","o","u"].include?(char)
end

def translate_word(word)
  first_vowel_position = word.chars.find_index{|char| is_vowel?(char)}
  leading_consonants = word[0..(first_vowel_position - 1)]

  if first_vowel_position == 0
    leading_consonants = ""

  elsif leading_consonants == "q" && word[1] == "u"
    leading_consonants = word[0..1]

  elsif leading_consonants == "sq" && word[2] == "u"
    leading_consonants = word[0..2]

  else
    leading_consonants

  end

  if leading_consonants == "qu"
    rest_of_the_word = word[2..-1]

  elsif leading_consonants == "squ"
    rest_of_the_word = word [3..-1]

  else
    rest_of_the_word = word[first_vowel_position..-1]
  end

  rest_of_the_word + leading_consonants + 'ay'
end

def translate(sentence)
  words = sentence.split(" ")
  words.map{|word| translate_word(word)}.join(" ")
end

puts translate("apple")
puts translate("banana")
puts translate("cherry")
puts translate("eat pie")
puts translate("three")
puts translate("the quick brown fox")
puts translate("school")
puts translate("square")