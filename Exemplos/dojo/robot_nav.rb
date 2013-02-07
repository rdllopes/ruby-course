require './compass'

class Robot
  attr_accessor :pos_x, :pos_y, :head_to, :max_x, :max_y, :debug
  def initialize(debug_mode=false)
    @debug = debug_mode
  end
    
  def create_matrix(string)
    values = string.split(/\s/)
    @max_x = Integer(values[0]) -1
    @max_y = Integer(values[1]) -1
  end
  
  def position(string)
    values = string.split(/\s/)
    @pos_x = Integer(values[0])
    @pos_y = Integer(values[1])
    @head_to = Compass.new(values[2].to_sym)
  end
  
  def move()
    case @head_to.pos()
    when :N
      @pos_y += 1 if @pos_y < @max_x
    when :E
      @pos_x += 1 if @pos_x < @max_x      
    when :S
      @pos_y -= 1 if @pos_y > 0
    when :W
      @pos_x -= 1 if @pos_x > 0     
    end    
  end
  
  def teleport(values)
    @pos_x = 1
    @pos_y = 3
  end
  
  def turn_left()
    @head_to.left()
  end
  
  def turn_right()
    @head_to.right()
  end
  
  def execute(string)
    values = string.split(/\s/)
    return teleport(values) if values[0] == 'T'
    values[0].each_char {|move|
      case move
      when 'L'
        turn_left()
      when 'R'
        turn_right()
      when 'M'
        move()
      else
        puts "Wrong move!"
      end
      if (@debug)
        puts move
        puts to_s()
      end
    }
  end
  
  
  def parse_file(filename)
    methods = %w(create_matrix position execute)
    file = File.new(filename, "r")
    i = 0
    while (line = file.gets)
        send(methods[i], line)
        i = i + 1 if i < 2
        if (@debug && i == 2)
          puts line
          puts to_s()
        end            
    end
    return to_s()
  end
  
  def to_s()
    "#{@pos_x} #{@pos_y} #{@head_to.pos()}"
  end
  
end