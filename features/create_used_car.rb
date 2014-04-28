
require 'pry'

require_relative '../lib/car_lot'
require_relative '../lib/car'
require_relative '../lib/used_car'


print  "What is the name of the car lot? "
lot_name = "kathy's cars"

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
    mileage = rand(1000..200_000)

  car = UsedCar.new(init_value, make, model, year, mileage)

  puts "Car = #{car.inspect}"

  car_lot.add_car(car)

  end

  puts "Car Lot = #{car_lot.inspect}"

binding.pry

#   person = InsurancePerson.new("fname_#{i}", "lname_#{i}", dob_str)
#   person.married = (rand(2) == 0 ? false : true)
#   person.smoke_cigarettes = (rand(2) == 0 ? false : true)
#   # puts "Person = #{person.inspect}"

#   company.add_client(person) if person.is_insurable?

# end

# puts "Insurance Company #{company.name} has #{company.get_clients.length} clients."
# puts "Insurance Company #{company.name} has #{company.get_smokers.length} smoking clients."
