#High-level modules should not depend on low-level modules.
#best example would be to separate "concerns" when it comes to method

class Person
  def use_social_media(data, media)
    media.new.show(data)
  end
end

class Facebook
  def show(data)
    puts "Showing #{data} on Facebook"
  end
end

class Twitter
  def show(data)
    puts "Showing #{data} on Twitter"
  end
end

person = Person.new
person.use_social_media("Sample Post", Facebook)
person.use_social_media("Sample Post", Twitter)