

class DockingStation
  def initialize
    @bikes = []
  end

  def release_bike
    raise "No bikes available" if @bikes.empty?
    @bikes.pop
  end

  def dock_bike(bike)
    raise "Station full" if @bikes.length >= 20
    @bikes << bike
    end

#    attr_reader  :bikes
    # def bike
    #   @bike
    # end
end
