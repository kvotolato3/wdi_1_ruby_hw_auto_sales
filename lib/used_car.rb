
class UsedCar < Car


  attr_reader :mileage
  attr_accessor :damages

  def initialize (init_value, make, model, year, mileage, dep_rate = 1.00/USEFUL_LIFE)
    super(init_value, make, model, year, dep_rate)
    @mileage = mileage
    @damages = []
  end

  def cost_reduction_mileage
    (self.mileage / 10_000) * 1_000
  end

  def cost_reduction_damage
    damage_total = 0
    @damages.each do |damage|
      damage_total += damage.damage_value
    end
    return damage_total
  end

  def current_value
    self.init_value - self.dep - self.cost_reduction_mileage - self.cost_reduction_damage
  end

  def sales_price(price_adjustment = 0)
    self.current_value + price_adjustment
  end

  def add_damage(damage)
    @damages << damage
  end

end



