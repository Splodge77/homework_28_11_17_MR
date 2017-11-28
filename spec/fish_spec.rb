require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")

class FishTest < MiniTest::Test

  def setup
    @fish = Fish.new("Guppy")
  end

  def test_fish_name()
    assert_equal("Guppy", @fish.name)
  end

  def test_can_add_fish()
    assert_equal(Fish, @fish.class())
  end

end
