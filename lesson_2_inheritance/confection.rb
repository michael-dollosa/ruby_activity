# We have a Confection class representing baked desserts. Your job is to create a new subclass of Confection, named Cupcake and Banana Cake. Cupcakes and Banana Cakes need to be baked just like other confections, but cupcakes also need to be frosted afterward. Write aa prepare method for your Cupcke and Banana Cake class that prints "Baking at 350 degrees for 25 minutes.", and then prints "Applying frosting" for Cupcake only.


class Confection
  def prepare
    puts "Baking at 350 degrees for 25 minutes."
  end
end

class Cupcake < Confection
  def prepare
    super
    puts "Applying frosting"
  end
end

class BananaCake < Confection
  
end

cup_cake = Cupcake.new()
cup_cake.prepare

banana_cake = BananaCake.new()
banana_cake.prepare