require("minitest/autorun")
require("minitest/rg")
require_relative("../fish")
# require_relative("../bear")
# require_relative("../river")

class FishTest < MiniTest::Test

  def setup
    @Fish = Fish.new("Salmon")
  end

  def test_fish_name
    assert_equal("Salmon", @Fish.name)
  end

end
