require ("MiniTest/autorun")
require ("MiniTest/rg")
require_relative("../person.rb")

class TestPerson < MiniTest::Test

  def setup
    @person = Person.new("Jo Bloggs", 22)
  end

  def test_get_name
    assert_equal("Jo Bloggs", @person.name)
  end

  def test_get_age
    assert_equal(22, @person.age)
  end

end
