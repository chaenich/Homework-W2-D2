class River

  attr_reader :name, :fishes

  def initialize(name, fishes)
    @name = name
    @fishes = fishes  # array
  end

  def count_river_fish
    return @fishes.count
  end

  def add_fish_to_river(fish)
    @fishes << fish
  end

  def river_fish_taken(fish)
    @fishes.delete(fish)
  end

end
