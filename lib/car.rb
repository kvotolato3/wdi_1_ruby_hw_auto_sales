
class Car
  USEFUL_LIFE = 10
  def initialize(init_value, make, model, year, dep_rate = 1.00/USEFUL_LIFE)
    @init_value = init_value
    @make = make
    @model = model
    @year = year
    @dep_rate = dep_rate
  end
end



