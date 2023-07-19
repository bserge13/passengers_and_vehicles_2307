require 'rspec'
require './lib/park'
require './lib/vehicle'
require './lib/passenger'

RSpec.describe Park do 
  it 'exists' do 
    bataan = Park.new({name: "Bataan National Park", admission: 10})
  end

  describe '#Iteration 3' do 
    it 'has readable attributes' do
      bataan = Park.new({name: "Bataan National Park", admission: 10})

      expect(bataan.name).to eq("Bataan National Park")
      expect(bataan.admission_price).to eq(10)
      expect(bataan.vehicle_count).to eq(0)
      expect(bataan.vehicles).to eq([])
    end

    it 'can add vehicles to the park and track the number entering' do
      bataan = Park.new({name: "Bataan National Park", admission: 10})
      vehicle_1 = Vehicle.new("2001", "Honda", "Civic")    
      vehicle_2 = Vehicle.new("2018", "Ford", "Mustang")  


      bataan.add_vehicle(vehicle_1)
      bataan.add_vehicle(vehicle_2)
      expect(bataan.vehicle_count).to eq(2)
      expect(bataan.vehicles).to eq([vehicle_1, vehicle_2])
    end

    it 'can count passengers in a vehicle' do
      bataan = Park.new({name: "Bataan National Park", admission: 10})
      vehicle_1 = Vehicle.new("2001", "Honda", "Civic")    
      vehicle_2 = Vehicle.new("2018", "Ford", "Mustang")  
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      jude = Passenger.new({"name" => "Jude", "age" => 20})    
      taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 

      vehicle_1.add_passenger(charlie)
      vehicle_1.add_passenger(jude)
      vehicle_2.add_passenger(taylor)

      bataan.add_vehicle(vehicle_1)
      bataan.add_vehicle(vehicle_2)

      expect(bataan.passengers).to eq(3)
      expect(bataan.revenue).to eq(30)
    end
  end
end