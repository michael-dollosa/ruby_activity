#since ruby does not have interface, we can show this principle by having uncessary methods in classes
#decoupling

class Person
  def introduce
    puts "Hi I am a Person"
  end
end

#sample is segragating methods that can be refactored more. If this is in person class, the class can be bloated after many changes.
class PersonMovements
  def move_right
    puts "Moving to the right"
  end

  def move_left
    puts "Moving to the left"
  end
end