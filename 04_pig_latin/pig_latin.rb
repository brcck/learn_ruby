# Rule 1: If a word begins with a vowel sound, add an "ay" sound to the end of the word.
#
# Rule 2: If a word begins with a consonant sound, move it to the end of the word, and then add an "ay" sound to the end of the word.

def translate(input)
  input.split(" ").map do |word|
    if %w[a e i o u].include? word[0]
      word + "ay"
    else
      i = 0
      until %w[a e i o u].include? word[i]
        i += 1 if word[i..i + 1] == "qu"
        i += 1
      end
      word[i..-1] + word[0..i - 1] + "ay"
    end
  end.join(" ")
end
