require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../river")
require_relative("../fish")

class BearTest < MiniTest::Test

  def setup
    @Bear = Bear.new("Gregor", "Grizzly", [])
    @River = River.new("Amazon", [])
    @Fish = Fish.new("Salmon")
    @Fish2 = Fish.new("Haddock")
    @Fish3 = Fish.new("Shark")
    @Fish4 = Fish.new("Tuna")
    @Fish5 = Fish.new("Goldfish")
  end

  def test_bear_name
    assert_equal("Gregor", @Bear.name)
  end

  def test_bear_type
    assert_equal("Grizzly", @Bear.species)
  end

  def test_count_bear_food
    assert_equal(0,
    @Bear.count_bear_food)
  end

  def test_bear_take_fish__add_to_bear
    @River.add_fish_to_river(@Fish)
    @River.add_fish_to_river(@Fish2)
    @River.add_fish_to_river(@Fish3)
    @River.add_fish_to_river(@Fish4)
    @River.add_fish_to_river(@Fish5)

    @Bear.bear_food_added(@Fish2)
    assert_equal(1, @Bear.count_bear_food)
  end

  def test_bear_river_fish_atomic_operation
    @River.add_fish_to_river(@Fish)
    @River.add_fish_to_river(@Fish2)
    @River.add_fish_to_river(@Fish3)
    @River.add_fish_to_river(@Fish4)
    @River.add_fish_to_river(@Fish5)

    atomic_swap(@Fish2)

    assert_equal(1, @Bear.count_bear_food)
    assert_equal(4, @River.count_river_fish)
  end

  def atomic_swap(fish)
    @Bear.bear_food_added(fish)
    @River.river_fish_taken(fish)
  end

  def test_bear_roar
    assert_equal("Roooaaarrr!!!", @Bear.bear_roar)
  end




end
