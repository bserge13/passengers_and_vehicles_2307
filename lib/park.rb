class Park
  attr_reader :name,
              :admission_price,
              :vehicle_count,
              :vehicles

  def initialize(hash_data)
    @name = hash_data[:name]
    @admission_price = hash_data[:admission]
    @vehicle_count = 0
    @vehicles = []
  end

  def add_vehicle(vehicle)
    @vehicles << vehicle
    @vehicle_count += 1
  end

  def passengers
    total_passengers = []
    @vehicles.each do |vehicle|
      num_riders = vehicle.passengers.count 
      total_passengers << num_riders
    end
    total_passengers.sum
  end

  def revenue
    passengers * @admission_price
  end

  def all_attendees
    names_of_passengers = []
    @vehicles.each do |vehicle|
      names_of_passengers << vehicle.passengers
    end
    names_of_passengers.select do |passenger|
      # require 'pry'; binding.pry
      passenger
    end
    # names = []
    # names_of_passengers.each do |passenger|
    #   require 'pry'; binding.pry
    #   names << passenger.name
    # end
    # names 
  end

  def minors

  end

  def adults

  end
end