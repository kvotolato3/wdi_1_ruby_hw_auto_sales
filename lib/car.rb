require 'pry'

class Car
  def initialize(init_value, make, model, year, dep_rate)
    @init_value = init_value
    @make = make
    @model = model
    @year = year
    @dep_rate = dep_rate
  end
end

binding.pry
