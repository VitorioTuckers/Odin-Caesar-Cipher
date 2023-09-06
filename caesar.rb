def caesar_chiper(string, shift_factor)
  encrypted_string = string.chars.map do |letter|
    if letter.match(/[a-zA-Z]/)
      ascii_value = letter.ord
      base = letter.match(/[a-z]/) ? 'a'.ord : 'A'.ord
      shifted_value = ((ascii_value - base + shift_factor) % 26) + base
      letter = shifted_value.chr
    else
      letter
    end
  end
  puts encrypted_string.join('')
end

caesar_chiper("What a string!",5)