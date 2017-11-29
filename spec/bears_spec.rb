require("minitest/autorun")
require("minitest/rg")
require_relative("../bears.rb")
require_relative("../river.rb")

class TestBears < MiniTest::Test

  def setup

    @bear = Bears.new("Fozzy")

  end

  def test_can_add_bear
    assert_equal(Bears, @bear.class())
  end

  def test_bear_name
    assert_equal("Fozzy", @bear.name)
  end

  def fish_eaten
    assert_equal(1, @bear.stomach_count())
  end

end
