require ("MiniTest/autorun")
require ("MiniTest/rg")
require_relative("../bus_stop")


class TestBusStop < MiniTest::Test

  def setup
    @bus_stop1 = BusStop.new("Elm Row")
  end

  def test_get_name
    assert_equal("Elm Row", @bus_stop1.stop_name)
  end
end
