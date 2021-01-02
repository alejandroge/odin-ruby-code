# frozen_string_literal: true

dictionary = [
  "below", "down", "go", "going", "horn", "how", "howdy", "it", "i",
  "low", "own", "part", "partner", "sit"
]

def substrings(string, dictionary)
  dictionary.each_with_object({}) do |pattern, hsh|
    matches = string.scan(/#{pattern}/i).count
    hsh[pattern] = matches if matches.positive?
  end
end

p substrings("below", dictionary)
