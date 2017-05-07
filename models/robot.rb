class Robot
  attr_accessor :position, :direction

  def initialize
    @position = [0,0]
    @direction = 'N'
    @compass = ['N', 'E', 'S', 'W', 'N', 'E','S']
  end

  def place(x,y, dir)
    if (0..4).include?(x) && (0..4).include?(y) && ['N','E','S','W'].include?(dir)
      @position = [x.to_i,y.to_i]
      @direction = dir
    end
  else
    puts 'Invalid placement.'
  end

  def report
    report = @position << @direction
    report.join(',')
  end

  def move
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
  end

  def left
    place = @compass.index(@direction)
    @direction = @compass[place + 3]
  end

  def right
    place = @compass.index(@direction)
    @direction = @compass[place + 1]
  end
end

