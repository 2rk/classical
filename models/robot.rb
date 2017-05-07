class Robot
  attr_accessor :position, :direction

  def initialize
    @placed = false
    @compass = ['N', 'E', 'S', 'W', 'N', 'E','S']
  end

  def place(x,y, dir)
    if (0..4).include?(x) && (0..4).include?(y) && ['N','E','S','W'].include?(dir)
      @position = [x.to_i,y.to_i]
      @direction = dir
      @placed = true
    else
      puts 'Invalid placement.'
    end
  end

  def report
    if @placed
      report = @position + [@direction]
      puts report.join(',')
    else
      puts 'Your robot has not been placed on the grid.'
    end
  end

  def move
    if @placed
      start_position = @position.clone
      case @direction
        when 'N'
          @position[1] += 1 if position[1] < 4
        when 'E'
          @position[0] += 1 if position[0] < 4
        when 'S'
          @position[1] -= 1 if position[1] > 0
        when 'W'
          @position[0] -= 1 if position[0] > 0
      end
      puts 'Toy Robot has reached the edge of the grid' if start_position == @position
    else
      puts 'Your robot has not been placed on the grid.'
    end
  end

  def left
    if @placed
      place = @compass.index(@direction)
      @direction = @compass[place + 3]
    else
      puts 'Your robot has not been placed on the grid.'
    end
  end

  def right
    if @placed
      place = @compass.index(@direction)
      @direction = @compass[place + 1]
    else
      puts 'Your robot has not been placed on the grid.'
    end
  end
end

