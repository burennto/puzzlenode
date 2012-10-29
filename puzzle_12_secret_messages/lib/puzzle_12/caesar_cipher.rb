module CaesarCipher

  ALPHABET = ('A'..'Z').to_a

  def self.decrypt(opts)
    shift      = opts[:shift]
    ciphertext = opts[:ciphertext]

    ciphertext.split(//).map { |c| c =~ /[A-Z]/ ? ALPHABET[ALPHABET.index(c % ALPHABET.size) - shift] : c }.join
  end

end
