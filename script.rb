alphabet = ("a".."z").to_a

def caesar_cipher(string, shift)
  string_array = string.split("")

  # Loop through array
  #   Get the current letter's index in the alphabet array
  #   Add the shift variable to the index to find the correct letter
  #     IF: the new letter's index is more than the length of the alphabet array, use index 0 + remaining iterations
       
  cipher_array = string_array.reduce(Hash.new(0)) do |cipher, letter|
    alphabet_index = alphabet.index(letter) + shift
    if alphabet_index > alphabet.length
      
    end
    new_letter = alphabet[alphabet_index + shift]
  end
end