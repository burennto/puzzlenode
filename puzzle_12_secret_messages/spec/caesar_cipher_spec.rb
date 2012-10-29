require 'puzzle_12'

describe CaesarCipher do

  describe '.decrypt' do

    let(:ciphertext) { 'FRZDUGV GLH PDQB WLPHV EHIRUH WKHLU GHDWKV; WKH YDOLDQW QHYHU WDVWH RI GHDWK EXW RQFH.' }
    let(:plaintext)  { 'COWARDS DIE MANY TIMES BEFORE THEIR DEATHS; THE VALIANT NEVER TASTE OF DEATH BUT ONCE.' }

    it 'decrypts correctly' do
      CaesarCipher.decrypt(:shift => 3, :ciphertext => ciphertext).should == plaintext
    end

  end

end