def caesar_cipher(string, key)
  characters = string.split('')
  shifted_chars = characters.map do |char|
    char_ascii = char.ord
    shifted_char = ""
    # Lowercase characters
    if char_ascii >= 65 && char_ascii <= 90
      shifted_char = (((char_ascii  + key - 65) % 26) + 65).chr
    # Uppercase characters
    elsif char_ascii >= 97 && char_ascii <= 122
      shifted_char = (((char_ascii + key - 97) % 26) + 97).chr
    else
      shifted_char = char
    end
    shifted_char
  end
  result = shifted_chars.join
  result
end

