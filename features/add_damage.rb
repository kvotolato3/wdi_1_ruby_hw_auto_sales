
require_relative '../lib/car_lot'
require_relative '../lib/car'
require_relative '../lib/used_car'
require_relative '../lib/damage'


print  "What is the name of the car lot? "
lot_name = "kathy's cars"

car_lot = CarLot.new(lot_name)

puts "Car lot is #{car_lot.inspect}"

  55.times do |i|
    makes_models = [{ make: "Volkswagen",
                      models: ['Jetta', 'Bug']},
                    { make: "Audi",
                      models: ['A6', 'S6']},
                    { make: "Porsche",
                      models: ['Cheyenne']},
                    { make: "Toyota",
                      models: ['Avalon', 'Camry', 'Corolla']},
                    { make: "Honda",
                      models: ['Civic']},
                    { make: "Subaru",
                      models: ['Forrester']}
                   ]
    make_models = makes_models.sample
    model = make_models[:models].sample
    make = make_models[:make]
    year = rand(2000..2013)
    init_value = rand(80_000..150_000)
    mileage = rand(1000..200_000)

  car = UsedCar.new(init_value, make, model, year, mileage)

  puts "Car = #{car.inspect}"

  car_lot.add_car(car)

  end

  puts "Car Lot = #{car_lot.inspect}"

  damage1 = Damage.new("broken trunk", 5_000, 1_000)
  car_lot.get_car(1).add_damage(damage1)
  damage2 = Damage.new("broken tire", 200, 50)
  car_lot.get_car(1).add_damage(damage2)
