
require 'pry'

require_relative '../lib/car_lot'
require_relative '../lib/car'
require_relative '../lib/used_car'
require_relative '../lib/damage'


# print  "What is the name of the car lot? "

lot_name = "kathy's cars"

car_lot = CarLot.new(lot_name)

#puts "Car lot is #{car_lot.inspect}"

  10.times do |i|
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
    make_models = makes_models.sample
    model = make_models[:models].sample
    make = make_models[:make]
    year = rand(2005..2013)
    init_value = rand(80_000..150_000)
    mileage = rand(1000..200_000)

    car = UsedCar.new(init_value, make, model, year, mileage)
    #puts "Car is: #{car.inspect}"

    car_lot.add_car(car)
    #puts "Car added to lot."

  end

  damage1 = Damage.new("broken trunk", 5_000, 1_000)
  car_lot.get_car(1).add_damage(damage1)
  damage2 = Damage.new("broken tire", 200, 50)
  car_lot.get_car(1).add_damage(damage2)

  #puts "-" * 10
  puts "Welcome to my app!"
  puts "It's currently using PRY as the user interface. There's still a lot you can do!"
  puts
  puts "Examples:"
  puts
  puts 'You can see all the Cars in the Car Lot by typing:'
  puts 'car_lot.cars'
  puts
  puts 'You can also count them using:'
  puts 'car_lot.cars_count'
  puts
  puts "Type `car = car_lot.get_car(1)` to get a Car. There are currently 10."
  puts "Type `car.sales_price` to get the sales price of the car, which takes depreciation, damages and milage into account."
  puts 'Type `car.sales_price(-1000)` to adjust the sales price.'
  puts
  puts 'You can create an additional car at any time by using:'
  puts "car = UsedCar.new(50_000, 'BMW', 'Z5', 2008, 20_000)"
  puts
  puts 'You can add it to the lot by using:'
  puts 'car_lot.add_car(car)'
  puts


  binding.pry
