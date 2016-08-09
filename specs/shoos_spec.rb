require('minitest/autorun')
require('minitest/rg')
require_relative('../models/shoos')

class TestShoos < Minitest::Test
  def setup
    @shoos = Shoos.new({"first_name" => "Jimmy", "last_name" => "Brogue", "address" => "113 Spital", "size" => 10, "quantity" => 1})
  end

  def test_has_first_name
    assert_equal("Jimmy", @shoos.first_name)
  end

  def test_has_last_name
    assert_equal("Brogue", @shoos.last_name)
  end

  def test_has_pretty_name
    assert_equal("Jimmy Brogue", @shoos.pretty_name)
  end

  def test_address
    assert_equal("113 Spital", @shoos.address)
  end

  def test_has_size
    assert_equal(10, @shoos.size)
  end

  def test_has_quantity
    assert_equal(1, @shoos.quantity)
  end

  def test_has_cost
    assert_equal(20, @shoos.cost)
  end
end