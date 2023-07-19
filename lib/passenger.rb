class Passenger
  attr_reader :name,
              :age,
              :driving

  def initialize(hash_data)
    @name = hash_data["name"]
    @age = hash_data["age"]
    @driving = false
  end

  def adult?
    if @age >= 18
      true
    else false
    end
  end

  def driver?
    @driving 
  end

  def drive
    if @driving == false 
      @driving = true
    end
  end
end