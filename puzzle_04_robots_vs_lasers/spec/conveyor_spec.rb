require 'puzzle_04'

describe Conveyor do

  describe '#initialize' do

    let(:conveyor) { Conveyor.new(:north => '#|#|#|##', :south => '###||###') }

    it 'parses the laser strings into array representations' do
      expect( conveyor.north ).to eq %w(# | # | # | # #)
      expect( conveyor.south ).to eq %w(# # # | | # # #)
    end

  end

end
