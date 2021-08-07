#principly simply means that we should be able to change methods without changing the "entity"
#this is easily showed by separating methods that have possibilities of change/enhancements into separate class 

class Person
  def initialize(name)
    @name = name
  end
end

#classes are just an example to demonstrate open-closed. Usually, we can just add def speech, or def pray, under Person class. But the problem is if there will be upgrades or changes on those methods, then we have to add more code into the methods, thus changing the whole "entity"

#solution is to separate them so the class Person is unchanged, while being able to modify and do changes.
class Speech < Person
  def speak
    puts "#{@name} will be delivering speech"
  end
end

class Pray < Person
  def speak
    puts "#{@name} will be delivering prayer"
  end
end

speech = Speech.new("Dolee")
speech.speak
pray = Pray.new("Dolee")
pray.speak
