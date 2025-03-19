# employee.rb

class Employee
  def initialize(name, role)
    @name = name
    @role = role
  end
  
  def show_details
    raise NotImplementedError, "You should implement this method."
  end
end