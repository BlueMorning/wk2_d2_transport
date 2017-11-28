class BusStop

  attr_reader :stop_name, :queue

  def initialize(stop_name)
    @stop_name = stop_name
    @queue = []
  end

end
