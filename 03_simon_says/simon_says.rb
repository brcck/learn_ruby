def echo(simon_said)
  simon_said
end

def shout(simon_said)
  simon_said.upcase
end

def repeat(simon_said, count = 2)
  ([simon_said] * count).join(" ")
end

def start_of_word(simon_said, count)
  simon_said.slice(0, count)
end

def first_word(simon_said)
  words = simon_said.split(" ")
  words[0]
end

def titleize(simon_said)
  words = simon_said.split(" ")
  words.each_with_index do |word, i|
    if (%w[the and over].include? word) && i != 0
      word
    else
      word.capitalize!
    end
  end
  words.join(" ")
end
