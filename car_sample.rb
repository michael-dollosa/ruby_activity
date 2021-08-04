class CarSample
  def initialize(name, color)
    @name = name
    @color = color
  end

  def start
    puts "I'm #{@name} and gonna vrooom vrooom vroooooooom"
  end
end

tesla = CarSample.new("teslala", "black")
tesla.start