#"if S is a subtype of T, then objects of type T may be replaced with objects of type S".
#what I always remember to understand this principle are:
#methods in these classes should have the following characteristics:

# Have the same name
# Take the same number of arguments with the same data type
# Return the same data type

class Person
  #usually in order to be compliant with liskov principle, methods of parent class should be respected by sub-classes. In this case, I would just have raise in speak method of Person class since I know that it will be different on subclasses. In this way, it will not have any side effects
  def speak
    raise "Should be subclass"
  end
end

#this makes the method consistent for all sub classes
class Filipino < Person
  def speak
    puts "Pinoy Ako"
  end
end

class American < Person
  def speak
    puts "I'm from America"
  end
end

