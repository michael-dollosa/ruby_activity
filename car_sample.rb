module AdditionalMethods
  def start
    "This is a module start"
  end
end

class CarSample
  def initialize(name, color)
    @name = name
    @color = color
  end

  def start
    "I'm #{@name} and gonna vrooom vrooom vroooooooom"
  end
end

# tesla = CarSample.new("teslala", "black")
# tesla.start

# p CarSample.methods
# p Class.methods

class GoodCar < CarSample
  # def start
  #   super + "super super"
  # end
end

class BetterCar < GoodCar
  
  def start
    super + " better car super"
  end
  include AdditionalMethods
end

# good_car = GoodCar.new("Good Car", "blue")
# p good_car.start

better_car = BetterCar.new("Better Car", "black")
p better_car.start