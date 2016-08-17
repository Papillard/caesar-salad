class Cipher

  def encrypt(text, permutation_level)
    alphabet = ('A'..'Z').to_a
    cipher = text.split("").map do |letter|
      index = alphabet.index(letter)
      if index
        new_index = (index + permutation_level) % 26
        alphabet[new_index]
      else
        letter
      end
    end
    return cipher.join
  end

  def enhanced_encrypt(text, permutation_level)
    vowels = %w(A E I O U)
    cipher = encrypt(text, permutation_level).split("").map do |letter|
      if vowels.include?(letter)
        block_given? ? yield(letter) : letter.downcase
      else
        letter
      end
    end
    return cipher.join
  end

  def decrypt_message(text)
    possibilities = []
    26.times do |i|
      possibilities << encrypt(text, i)
    end
    return possibilities
  end

end
