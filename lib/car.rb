
class Car
  USEFUL_LIFE = 10

  # class variable
  @car_id = 0

# class method
# getter for a class variable
  def self.car_id
    @car_id
  end

  def self.gen_car_id
    @car_id += 1
  end

  attr_reader :car_id, :init_value
  attr_accessor :make, :model, :year, :dep_rate

  def initialize(init_value, make, model, year, dep_rate = 1.00/USEFUL_LIFE)
    @init_value = init_value
    @make = make
    @model = model
    @year = year
    @dep_rate = dep_rate
    @car_id = Car.gen_car_id
  end

  def age
    time = Time.new
    time.year - year
  end

  # def yearly_dep
  #   init_value /
  # end



end



