#.split method then you can split (x,y) into two numbers and assign each one into a variable
#.chomp means???
#problems:
class Rover
  @@rovers = []
  def initialize (x , y , direction)
    @x = x
    @y = y
    @direction = direction
    @@rovers << self
  end
  def self.each_rover
  end 
  def self.rovers
    @@rovers
  end
  def read_instruction #accept an instruction and decide whether to tell the rover to move or turn
  end
  def move #affects the position of the rover, need to update the x and y


  end
  def turn #affects the direction of the rover, determined with L or R
    #need to be able to track the direction, which means need to update the deirection after each turn
  end

end
