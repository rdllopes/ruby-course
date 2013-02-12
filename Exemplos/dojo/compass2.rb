class Compass
  attr_writer :pos
  
  alias :left :L
  alias :right :R 
  def left
    puts "left"
  end
  
  def right
    puts "right"
  end
      
end

c = Compass.new
command = gets
command = command.strip
c.send(command.to_sym)
