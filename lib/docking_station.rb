class DockingStation
  DEFAULT_CAPACITY = 20

  attr_accessor :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    raise "No bikes available" if empty? || !@bikes.any? { |bike| bike.working }
    @bikes.delete_at(@bikes.index { |bike| bike.working })  
  end

  def dock_bike(bike, broken=false)
    raise "Station full" if full?
    bike.working = false if broken
    @bikes << bike

  end

private
  def full?
    @bikes.length >= @capacity
  end

  def empty?
    @bikes.empty?
  end
end
