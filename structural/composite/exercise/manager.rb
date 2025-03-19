# manager.rb

require_relative 'employee'

class Manager < Employee
  def initialize(name, role)
    super(name, role)
    @subordinates = []
  end

  def add(employee)
    @subordinates << employee
  end

  def show_details(indent = 0)
    puts "#{'  ' * indent}+ #{@name} (#{@role})"
    @subordinates.each { |subordinate| subordinate.show_details(indent + 1) }
  end
end