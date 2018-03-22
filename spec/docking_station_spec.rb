require "docking_station"

describe DockingStation do
#  it {is_expected.to respond_to (:release_bike) }
  # describe "#release_bike" do
  #   it "releases a working bike" do
  #     bike = subject.release_bike
  #   expect(bike.working?).to eq(true)
  # end
  describe "#release_bike" do
  it "releases bike if there is a bike" do
    docking_station = DockingStation.new
    docking_station.dock_bike(Bike.new)
    expect(docking_station.release_bike).to be_an_instance_of(Bike)
 end

  it "throws error when no bike available" do
    expect { subject.release_bike }.to raise_error "No bikes available"
  end
end
describe "#dock_bike" do
  it "throws error when station full" do
    docking_station = DockingStation.new
    docking_station.dock_bike(Bike.new)
    expect { docking_station.dock_bike(Bike.new) }.to raise_error "Station full"
  end

  it "returns docked bikes" do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.bike).to eq bike
  end
end
end
