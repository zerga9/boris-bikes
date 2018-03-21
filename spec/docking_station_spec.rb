require "docking_station"

describe DockingStation do
#  it {is_expected.to respond_to (:release_bike) }
  it "releases a working bike" do
    bike = DockingStation.new.release_bike
    expect(bike.working?).to eq(true)
  end
end
