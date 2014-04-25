
require_relative '../lib/car_lot'
require_relative '../lib/car'

print  "What is the name of the car lot? "
lot_name = gets.chomp

car_lot = CarLot.new(lot_name)

puts "Car lot is #{car_lot.inspect}"

55.times do |i|
    makes_models = [{ make: "Volkswagon",
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
    make = makes_models.sample[:make]
#BUG: the model is supposed to return be random model of the given make, but it currently
# returns just a random model from any one of the makes.
    model = makes_models.sample[:models].sample
    year = rand(2000..2013)
    init_value = rand(30_000..50_000)

  car = Car.new(init_value, make, model, year)

  puts "Car = #{car.inspect}"

  end
