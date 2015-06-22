def echo(string)
  p "#{string}"
end

def shout(string)
  p "#{string.upcase}"
end

def repeat(string, n = 2)
  p "#{string}" + " #{string}" * (n - 1)
end

def start_of_word(string, r)
  p "#{string.slice(0, r)}"
end

def first_word(string)
  p "#{string.slice(/\A\w*/)}"
end

def titleize(string)

  little_words = ["the", "and", "of", "a", "it", "over"]

  words = string.split(" ")

  words.map! do |word|
    unless little_words.include?(word)
      word.capitalize
    else
      word
    end
  end

  words.map! do |word|
    if word == words.first
      word.capitalize
    else
      word
    end
  end

  words.join(" ")
end

puts titleize("war and peace")