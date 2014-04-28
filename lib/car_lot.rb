
class CarLot
  attr_reader :name, :cars

  def initialize(lot_name)
    @lot_name = lot_name
    @cars = []
  end

  def add_car(car)
    @cars << car
  end

  def get_car(id)
    self.cars.detect { |car| car.car_id == id }
  end

  def cars_count
    self.cars.length
  end
end

