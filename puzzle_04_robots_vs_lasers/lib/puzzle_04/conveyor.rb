class Conveyor

  attr_accessor :north, :south

  LASER = '|'

  def initialize(opts)
    @north = opts[:north].split('')
    @south = opts[:south].split('')
  end

end
