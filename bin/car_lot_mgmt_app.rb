
require_relative '../lib/car_lot'

print  "What is the name of the car lot? "
lot_name = gets.chomp

car_lot = CarLot.new(lot_name)

puts "Car lot is #{car_lot.inspect}"
