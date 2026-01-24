require 'pry-byebug'
def caesar_cipher(string, shift)
  string_array = string.split('')

  # Generate array for A-Z and a-z (to maintain caps)
  alphabet = ('A'..'Z').to_a.concat(('a'..'z').to_a)

  cipher_array = string_array.reduce(Array.new(0)) do |cipher, letter|
    alphabet_index = alphabet.find_index(letter)
    if alphabet_index.nil?
      cipher.push(letter)

      cipher
    else
      alphabet_index = alphabet.find_index(letter) + shift

      new_index = alphabet_index + shift

      # IF: the new letter's index is more than the length of the alphabet array, use index 0 + remaining iterations
      if alphabet_index > alphabet.length
        # Get the difference between index and length
        new_index = diff(alphabet_index, alphabet.length)
      end

      # Get the new letter
      new_letter = alphabet[new_index]

      # Add new letter to the cipher array
      cipher.push(new_letter)

      cipher
    end
  end

  cipher_array.join('')
end

def diff(a, b)
  (a - b).abs
end

puts caesar_cipher('He!llo!', 4)
