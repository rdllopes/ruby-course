require './robot'

robot = Robot.new
puts robot.parse_file(ARGV.first || "teste.txt")