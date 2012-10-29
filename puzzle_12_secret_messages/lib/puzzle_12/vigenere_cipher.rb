module VigenereCipher

  ALPHABET = 'A'..'Z'

  def self.decrypt(opts)
    keyword    = opts[:keyword]
    ciphertext = opts[:ciphertext].split(//)

    cipher_alphabet = keyword.split(//) * (ciphertext.length.to_f / keyword.length.to_f).ceil

    plaintext = ciphertext.inject('') do |memo, c|
      c = CaesarCipher.decrypt(:shift => ALPHABET.to_a.index(cipher_alphabet.shift), :ciphertext => c) if ALPHABET.include?(c)
      memo << c
    end
  end

end
