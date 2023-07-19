require 'rspec'
require './lib/vehicle'
require './lib/passenger'

RSpec.describe Vehicle do 
  it 'exists' do 
    vehicle = Vehicle.new("2001", "Honda", "Civic")    
    expect(vehicle).to be_a(Vehicle)
  end

  describe '#Iteration 2' do
    it 'is has reradable attributes' do
      vehicle = Vehicle.new("2001", "Honda", "Civic")    

      expect(vehicle.year).to eq("2001")
      expect(vehicle.make).to eq("Honda")
      expect(vehicle.model).to eq("Civic")

      expect(vehicle.speeding?).to eq(false)
      vehicle.speed
      expect(vehicle.speeding?).to eq(true)

      expect(vehicle.passengers).to eq([])
    end

    it 'adds passengers to a vehicle' do 
      vehicle = Vehicle.new("2001", "Honda", "Civic")    

      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      jude = Passenger.new({"name" => "Jude", "age" => 20})    
      taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
  
      vehicle.add_passenger(charlie)
      vehicle.add_passenger(jude)
      vehicle.add_passenger(taylor)

      expect(vehicle.passengers).to eq([charlie, jude, taylor])
      expect(vehicle.num_adults).to eq(2)
    end
  end
end