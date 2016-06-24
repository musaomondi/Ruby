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
  def print_pay_stub
    puts "Name: #{@name}"
    pay_for_period=(@salary/365.0)*14
    puts "Pay This Period: $#{pay_for_period}"
  end
end

musa=Employee.new
musa.name="Musa"
musa.salary=50000
musa.print_pay_stub
