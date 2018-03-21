require "bike"

class DockingStation


  def release_bike
    return Bike.new
  end

  def dock_bike(bike)
    @bike = bike
    end

    attr_reader  :bike
    # def bike
    #   @bike
    # end
end
