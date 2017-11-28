class Bus

  attr_reader :route_number

  def initialize(route_number,destination)
    @route_number = route_number
    @destination = destination
  end
end
