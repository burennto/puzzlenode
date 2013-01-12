require 'puzzle_04'

describe Robot do

  describe '#choose_direction' do

    let(:robot) { Robot.new }

    context 'when moving west results in the least damage' do

      let(:conveyor) { Conveyor.new(:north => '#|#|#|##', :south => '###||###') }
      let(:position) { '---X----' }

      it 'returns GO WEST' do
        expect( robot.choose_direction(:conveyor => conveyor, :position => position) ).to eq 'GO WEST'
      end

    end

    context 'when moving east results in the least damage' do

      let(:conveyor) { Conveyor.new(:north => '##|#|#|#', :south => '###||###') }
      let(:position) { '----X---' }

      it 'returns GO EAST' do
        expect( robot.choose_direction(:conveyor => conveyor, :position => position) ).to eq 'GO EAST'
      end

    end

    context 'when both west and east results in the same damage' do

      let(:conveyor) { Conveyor.new(:north => '##|#|#|#', :south => '###|||##') }
      let(:position) { '----X---' }

      it 'returns GO WEST' do
        expect( robot.choose_direction(:conveyor => conveyor, :position => position) ).to eq 'GO WEST'
      end

    end

  end

end
