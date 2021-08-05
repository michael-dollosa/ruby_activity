# We have a Confection class representing baked desserts. Your job is to create a new subclass of Confection, named Cupcake and Banana Cake. Cupcakes and Banana Cakes need to be baked just like other confections, but cupcakes also need to be frosted afterward. Write aa prepare method for your Cupcke and Banana Cake class that prints "Baking at 350 degrees for 25 minutes.", and then prints "Applying frosting" for Cupcake only.

module Bake
  def bake
    "Baking at 350 degrees for 25 minutes."
  end
end

class Confection

end

class Cupcake < Confection
  include Bake
  def frost
    "Applying frosting"
  end

  def prepare
    puts bake
    puts frost
  end
end

class BananaCake < Confection
  include Bake
  def prepare
    puts bake
  end
end

cup_cake = Cupcake.new()
cup_cake.prepare

banana_cake = BananaCake.new()
banana_cake.prepare