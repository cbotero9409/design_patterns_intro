require_relative 'mammals'
require_relative 'clone_factory'

snoopy = Mammals::Dog.new('snoopy')
kitty = Mammals::Cat.new('kitty')

clone_factory = CloneFactory.new
snoopy_clone = clone_factory.get_clone(snoopy)
kitty_clone = clone_factory.get_clone(kitty)

puts snoopy.object_id
puts snoopy.name

puts snoopy_clone.object_id
puts snoopy_clone.name

puts kitty.object_id
puts kitty.name

puts kitty_clone.object_id
puts kitty_clone.name
