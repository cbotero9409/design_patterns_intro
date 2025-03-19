# main.rb

require_relative 'individual_contributor'
require_relative 'manager'

contributor1 = IndividualContributor.new('Bob', 'Software Engineer')
contributor2 = IndividualContributor.new('Carol', 'QA Engineer')
manager1 = Manager.new('Alice', 'Engineering Manager')
manager1.add(contributor1)
manager1.add(contributor2)

contributor3 = IndividualContributor.new('Eve', 'Product Designer')
contributor4 = IndividualContributor.new('Mallory', 'UX Designer')
manager2 = Manager.new('Dave', 'Product Manager')
manager2.add(contributor3)
manager2.add(contributor4)
manager3 = Manager.new('Frank', 'VP of Product')
manager3.add(manager2)

manager1.show_details
manager3.show_details
