## Animal is-a object look at the extra credit
class Animal
end

## Dog which is-a Animal
class Dog < Animal

  def initialize(name)
    ## dog has a name
    @name = name
  end
end

## is-a
class Cat < Animal

  def initialize(name)
    ## has-a
    @name = name
  end
end

## is-a
class Person

  def initialize(name)
    ## has-a
    @name = name

    ## Person has-a pet of some kind
    @pet = nil
  end

  attr_accessor :pet
end

## is-a
class Employee < Person

  def initialize(name, salary)
    ## ?? hmm what is this strange magic?
    super(name)
    ## has-a
    @salary = salary
  end
end
## is-a
class Fish
end
## is a
class Salmon < Fish
end
## is-a
class Halibut < Fish
end
## rover is-a Dog
rover = Dog.new("Rover")
## ??
satan = Cat.new("Satan")
## mary is-a person
mary = Person.new("Mary")
mary.pet = satan
frank = Employee.new("Frank", 120000)
frank.pet = rover
flipper = Fish.new()
crouse = Salmon.new()
harry = Halibut.new()
