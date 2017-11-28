require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")
require_relative("../fish.rb")

class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Amazon")
    @fish1 = Fish.new("Jeremy")
    @fish2 = Fish.new("Clarkson")
  end

  def test_river_name()
    assert_equal("Amazon", @river.name)
  end

  def test_can_add_river()
    assert_equal(River, @river.class())
  end

  def test_river_starts_empty
    assert_equal(0, @river.fish_count())
  end

  def test_add_fish()
    @river.add_fish(@fish1)
    assert_equal(1, @river.fish_count())
  end

  def test_add_multiple_fish
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    assert_equal(2, @river.fish_count())
  end

  def test_fish_removed
    @river.add_fish(@fish1)
    @river.remove_fish(@fish1)
    assert_equal(0, @river.fish_count())
  end
end
