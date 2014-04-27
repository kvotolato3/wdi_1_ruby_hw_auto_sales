
class CarLot
  attr_reader :name

  def initialize(lot_name)
    @lot_name = lot_name
    @cars = []
  end

  def add_car(car)
    @cars << car
  end

  def get_lot
    @cars
  end
end



# methods to create:
# retrieve cars
# return lot value
