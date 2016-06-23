#assigns variable cars to 100
cars = 100
#assigns the variable space_in_a_car to 4.0
space_in_a_car = 4.0
#assigns the variable drivers to 30
drivers = 30
#assigns variable passangers to 90
passengers = 90
#assigns variable car_not_driven to cars minus drivers
cars_not_driven = cars - drivers
#assigns variable cars_driven to drivers
cars_driven = drivers
#assigns variable carpool_capacity to cars_driven*space_in_a_car
carpool_capacity = cars_driven * space_in_a_car
#assigns variable average_passangers_per_car to passangers/cars_driven
average_passengers_per_car = passengers / cars_driven

#outputs the string +the number of cars inside the interpolation
puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."
