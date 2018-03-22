require "bike"

class DockingStation
  def initialize
    @bike = nil
  end

  def release_bike
    raise "No bikes available" if @bike.nil?
    @bike
  end

  def dock_bike(bike)
    raise "Station full" if @bike != nil
    @bike = bike
    end

    attr_reader  :bike
    # def bike
    #   @bike
    # end
end
