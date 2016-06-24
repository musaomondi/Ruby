class Employee
  attr_reader :name, :salary

  def name=(name)
    if name==""
      raise "Name can't be blank!"
    end
    @name=name
  end
  def salary=(salary)
    if salary<0
      raise "A salary of #{salary} is not valid"
    end
    @salary=salary
  end
  def initialize(name,salary)
    @name=name
    @salary=salary
  end
  def print_pay_stub
    puts "Name: #{@name}"
    pay_for_period=(@salary/365.0)*14
    formatted_pay=format("%.2f", pay_for_period)
    puts "Pay This Period: $#{formatted_pay}"
  end
end

musa=Employee.new("Musa Amoke", 50000)
musa.print_pay_stub
