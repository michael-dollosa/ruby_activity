class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    puts "Hi I am #{@name}, and I'm #{@age} years old"
  end

  def tell_me_your_secret
    puts secret
  end

  #example of abstaction is creating private methods
  private

  def secret
    "Please don't ask my secret"
  end
end

person_a = Person.new("Dolee", 40)
person_a.introduce
person_a.tell_me_your_secret