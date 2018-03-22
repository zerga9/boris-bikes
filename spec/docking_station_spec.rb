require "docking_station"

describe DockingStation do
#  it {is_expected.to respond_to (:release_bike) }
  # describe "#release_bike" do
  #   it "releases a working bike" do
  #     bike = subject.release_bike
  #   expect(bike.working?).to eq(true
  # end

  it 'default capacity is 20' do
    expect(subject.capacity).to be 20
  end
  
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
    docking_station = DockingStation.new(30)
    30.times {docking_station.dock_bike(Bike.new)}
    expect { docking_station.dock_bike(Bike.new) }.to raise_error "Station full"
  end
  it "docks bike if station not full" do
    docking_station = DockingStation.new
    bike = Bike.new
    expect(docking_station.dock_bike(bike)).to include(bike)
  end
end
end
