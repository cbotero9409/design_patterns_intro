# individual_contributor.rb

require_relative 'employee'

class IndividualContributor < Employee
  def show_details(indent = 0)
    puts "#{'  ' * indent}- #{@name} (#{@role})"
  end
end