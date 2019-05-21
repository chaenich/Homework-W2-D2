require("minitest/autorun")
require("minitest/rg")
require_relative("../river")
# require_relative("../bear")
require_relative("../fish")

class RiverTest < MiniTest::Test

  def setup
    @River = River.new("Amazon", [])
    @Fish = Fish.new("Salmon")
    @Fish2 = Fish.new("Haddock")
    @Fish3 = Fish.new("Shark")
    @Fish4 = Fish.new("Tuna")
    @Fish5 = Fish.new("Goldfish")
  end

  def test_river_name
    assert_equal("Amazon", @River.name)
  end

  def test_count_river_fish
    assert_equal(0, @River.count_river_fish)
  end

  def test_add_fish_to_river__5
    @River.add_fish_to_river(@Fish)
    @River.add_fish_to_river(@Fish2)
    @River.add_fish_to_river(@Fish3)
    @River.add_fish_to_river(@Fish4)
    @River.add_fish_to_river(@Fish5)

    assert_equal(5, @River.count_river_fish)
  end

  def test_river_fish_taken
    @River.add_fish_to_river(@Fish)
    @River.add_fish_to_river(@Fish2)
    @River.add_fish_to_river(@Fish3)
    @River.add_fish_to_river(@Fish4)
    @River.add_fish_to_river(@Fish5)

    @River.river_fish_taken(@Fish3)
    assert_equal(4, @River.count_river_fish)
  end

end
