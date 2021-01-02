# frozen_string_literal: true

def caesar_cipher(string, shift)
  CaesarCipher.cipher(string, shift)
end

class CaesarCipher
  UPPER_ABC = ('A'..'Z').to_a.freeze
  LOWER_ABC = ('a'..'z').to_a.freeze

  def self.cipher(string, shift)
    new(string, shift).cipher
  end

  def initialize(string, shift)
    @string = string
    @shift = shift
  end

  def cipher
    @string.chars.map { |c| cipher_character(c) }.join
  end

private
  def cipher_character(character)
    return shift_character(character, LOWER_ABC) if character.match? /[a-z]/
    return shift_character(character, UPPER_ABC) if character.match? /[A-Z]/
    character
  end

  def shift_character(character, array)
    array[(array.index(character) + @shift) % 26]
  end

end

puts caesar_cipher("What a string!", 5)
