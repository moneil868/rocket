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
    rocket.lift_off
    assert_equal true, rocket.flying?
  end


end
