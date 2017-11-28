class Bus

  attr_reader :route_number, :destination, :passengers

  def initialize(route_number,destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  def drive
    return "beep, beep"
  end

  def passengers_number
    return @passengers.count()
  end

  def pick_up(passenger)
    @passengers.push(passenger)
  end

  def drop_off(passenger)
    @passengers.delete(passenger)
  end

  def remove_all_passengers
    while(@passengers.count > 0)
      @passengers.delete_at(0)
    end
  end

  def pick_up_from_stop(bus_stop)
    while(bus_stop.queue.count > 0)
      @passengers.push(bus_stop.queue.first)
      bus_stop.queue.delete_at(0)
    end
    
  end
end
