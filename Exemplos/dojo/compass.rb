class Compass
  COMPASS = [:N, :E, :S, :W]
  def initialize(cur)
    @pos = COMPASS.index(cur)
  end
  
  def left()
    @pos = (@pos - 1) % 4;
    pos()
  end
  
  def right()
    @pos = (@pos + 1) % 4;
    pos()      
  end
  
  def pos()
    COMPASS[@pos]
  end
end