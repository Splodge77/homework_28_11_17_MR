require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")

class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Amazon")
  end

  def test_river_name()
    assert_equal("Amazon", @river.name)
  end

  def test_can_add_river()
    assert_equal(River, @river.class())
  end

end