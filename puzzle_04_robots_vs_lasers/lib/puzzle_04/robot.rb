class Robot

  ROBOT = 'X'

  def choose_direction(opts)
    @conveyor = opts[:conveyor]
    @position = opts[:position].split('')

    damage_from_going_west <= damage_from_going_east ? 'GO WEST' : 'GO EAST'
  end

  protected

    def damage_from_going_west
      calculate_damage(:west)
    end

    def damage_from_going_east
      calculate_damage(:east)
    end

    def calculate_damage(direction)
      damage = 0

      north, south = @conveyor.north.clone, @conveyor.south.clone
      position     = @position.clone

      if direction == :west
        [ north, south, position ].map(&:reverse!)
      end

      start  = position.index(ROBOT)
      finish = position.length - 1

      (start..finish).each_with_index do |i, click|
        damage += 1 if hit_by_laser?(north, south, i, click)
      end

      damage
    end

    def hit_by_laser?(north, south, index, click)
      case
      when click.even? then hit_by_north?(north, index)
      when click.odd?  then hit_by_south?(south, index)
      end
    end

    def hit_by_north?(north, index)
      north[index] == Conveyor::LASER
    end

    def hit_by_south?(south, index)
      south[index] == Conveyor::LASER
    end

end
