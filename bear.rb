class Bear

  attr_reader :name, :species, :foods

  def initialize(name, species, foods)
    @name = name
    @species = species
    @foods = foods  # array
  end

  def count_bear_food
    return @foods.count
  end

  def bear_roar
    return "Roooaaarrr!!!"
  end

  def bear_food_added(fish)
    @foods << fish
  end

end
