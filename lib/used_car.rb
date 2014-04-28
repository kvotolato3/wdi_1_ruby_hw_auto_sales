
class UsedCar < Car


  attr_reader :mileage
  attr_accessor :damages

  def initialize (init_value, make, model, year, mileage, dep_rate = 1.00/USEFUL_LIFE)
    super(init_value, make, model, year, dep_rate = 1.00/USEFUL_LIFE)
    @mileage = mileage
    @damages = []
  end



end



