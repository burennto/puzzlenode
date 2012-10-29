require 'puzzle_12'

describe VigenereCipher do

  describe '.decrypt' do

    let(:ciphertext) do
      %q(
        IONDVQY DZH QNTY KLQRY BVISEK TYHME JERWLF; ZHV YEYOAEW RRBEI WEFZE FI HRGTY
        EYG UNTH. SS GLC WLR COEGIEY TYDX V EEK KEIK HVDVQ, OT JHIZY TF PI ZUSK VXEGNXH
        XUGT DHR FNOLOH SKAI; VIRONX WLNZ DVDXU, G NVFIFYAIB IAJ, WZOP PUMV ZLRT
        IK ZMYR CFPI.
      )
    end

    let(:plaintext) do
      %q(
        COWARDS DIE MANY TIMES BEFORE THEIR DEATHS; THE VALIANT NEVER TASTE OF DEATH
        BUT ONCE. OF ALL THE WONDERS THAT I YET HAVE HEARD, IT SEEMS TO ME MOST STRANGE
        THAT MEN SHOULD FEAR; SEEING THAT DEATH, A NECESSARY END, WILL COME WHEN
        IT WILL COME.
      )
    end

    it 'decrypts correctly' do
      VigenereCipher.decrypt(:keyword => 'GARDEN', :ciphertext => ciphertext).should == plaintext
    end

  end

end