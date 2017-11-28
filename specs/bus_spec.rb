require ("MiniTest/autorun")
require ("MiniTest/rg")
require_relative("../bus")
require_relative("../person")

class TestBus < MiniTest::Test

  def setup
    @bus = Bus.new(22, "Ocean Terminal")
    @passenger1 = Person.new("Annie Smith", 80)
    @passenger2 = Person.new("Johnny Cash", 70)
    @passenger3 = Person.new("James Bond", 50)
  end

  def test_get_route_number
    assert_equal(22, @bus.route_number)
  end

  def test_get_destination
    assert_equal("Ocean Terminal", @bus.destination)
  end

  def test_drive
    assert_equal("beep, beep", @bus.drive())
  end

  def test_get_passengers
    assert_equal([], @bus.passengers)
  end

  def test_get_number_of_passengers
    assert_equal(0, @bus.passengers_number)
  end

  def test_pick_up_passenger
    @bus.pick_up(@passenger1)
    assert_equal(1, @bus.passengers_number)
  end

  def test_drop_off_passenger
    @bus.drop_off(@passenger1)
    assert_equal(0, @bus.passengers_number)
  end

  def test_remove_all_passengers
    @bus.pick_up(@passenger1)
    @bus.pick_up(@passenger2)
    @bus.pick_up(@passenger3)
    @bus.remove_all_passengers()
    assert_equal(0, @bus.passengers_number)
  end
end
