class Damage

  attr_accessor :description, :cost_to_repair, :is_fixed, :value_penalty

  def initialize(description, cost_to_repair, value_penalty, is_fixed = false)
    @description = description
    @cost_to_repair = cost_to_repair
    @is_fixed = is_fixed
    @value_penalty = value_penalty
  end

  def damage_value
    if self.is_fixed == true
      self.value_penalty
    else
      self.cost_to_repair + self.value_penalty
    end
  end

end
