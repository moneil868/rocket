require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
  # Write your tests here!

  def test_name=()
    rocket = Rocket.new
    rocket.name = "Test Name"
    assert_equal "Test Name", rocket.name
  end


  def test_colour=()
    rocket = Rocket.new
    rocket.colour = "Test Colour"
    assert_equal "Test Colour", rocket.colour
  end

  def test_flying?
    rocket = Rocket.new
    assert_equal false, rocket.flying?
  end

  def test_lift_off_if_not_flying
    rocket = Rocket.new
  
    assert_equal true, rocket.lift_off
  end

  def test_lift_off_if_flying
    rocket = Rocket.new(:flying => true)

    assert_equal false, rocket.lift_off
  end

end
