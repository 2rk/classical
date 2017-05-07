require_relative 'models/robot'

command_list = "REPORT - reports on the current position of the robot \n
LEFT - turns the robot 90 degrees to the left \n
RIGHT - turns the robot 90 degrees to the right \n
MOVE - moves the robot forward one space \n
PLACE 1,1,E - places the robot in given position \n
"

puts "Would you like to read from a file? Y/N: "
if gets.chomp.upcase == 'Y'
  r2 = Robot.new
  puts 'Please enter filename: '
  filename = gets.chomp
  file = File.open("data/#{filename}", 'r')
  file.readlines.each do |line|
    case
      when line.include?('PLACE')
        letters = line.split('')
        r2.place(letters[6], letters[8], letters[10])
      when line.include?('MOVE')
        r2.move
      when line.include?('REPORT')
        puts r2.report
      when line.include?('LEFT')
        r2.left
      when line.include?('RIGHT')
        r2.right
    end
  end
else
  r2 = Robot.new
  flag = true
  while flag
    puts "Enter 'C' to show possible commands or 'Q' to quit"
    puts 'Please enter a command: '
    command = gets.chomp.upcase
    case
      when command == 'C'
        puts command_list
      when command == 'Q'
        puts 'Thanks for playing!'
        flag = false
      when command.start_with?('PLACE')
        letters = command.split('')
        r2.place(letters[6], letters[8], letters[10])
      when command.start_with?('MOVE')
        r2.move
      when command.start_with?('REPORT')
        puts r2.report
      when command.start_with?('LEFT')
        r2.left
      when command.start_with?('RIGHT')
        r2.right
    end
  end
end

