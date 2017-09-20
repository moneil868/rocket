require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
  # Write your tests here!

  def test_name=()
    rocket = Rocket.new
    rocket.name = "Test Name"
    assert_equal "Test Name", rocket.name

  end


end
