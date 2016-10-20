class Cat
  @@all = []
  def initialize(name , preferred_food , meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
    @@all << self
    
  end

  def eats_at
    if @meal_time < 12
      return "Meal time is #{@meal_time} AM"
    else
      return "Meal time is #{@meal_time - 12} PM"
    end
  end
  #returns a string of the cat telling you all about itself
  def meow
    return "My name is #{@name} and I eat #{@preferred_food} at #{@meal_time}"
  end
  #class method
  def self.create_cats
    Cat.new("Nala" , "fish" , 11)
    Cat.new("Simba" , "cheese" , 15)
  end

  def nala

  end
  def self.all
    @@all
  end
end

Cat.create_cats
