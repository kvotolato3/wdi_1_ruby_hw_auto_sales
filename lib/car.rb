
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
    Time.now.year - self.year
  end

  def yearly_dep
    self.init_value / USEFUL_LIFE
  end

  def dep
    if age <= USEFUL_LIFE
      self.yearly_dep * self.age
    else
      init_value
    end
  end
end



