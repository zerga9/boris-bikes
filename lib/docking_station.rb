

class DockingStation
  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
  end

  def release_bike
    raise "No bikes available" if empty?
    @bikes.pop
  end

  def dock_bike(bike)
    raise "Station full" if full?
    @bikes << bike
    end

private
  def full?
    @bikes.length >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end
#    attr_reader  :bikes
    # def bike
    #   @bike
    # end
end
