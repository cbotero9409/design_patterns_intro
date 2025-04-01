# main.rb

require_relative 'editor'
require_relative 'caretaker'

editor = Editor.new
caretaker = Caretaker.new

loop do
  puts "Write something (or type 'exit' to quit):"
  input = gets.chomp
  break if input == "exit"

  puts "Save? (y/n): "
  save = gets.chomp
  if save == 'y'
    editor.content = input
    caretaker.add_memento(editor.generate_memento)

    puts "Write something: "
    input = gets.chomp
    break if input == "exit"

    puts "Undo? (y/n): "
    undo = gets.chomp
    if undo == 'y'
      editor.restore(caretaker.last_memento)
    else
      editor.content = input
    end
  end 

  puts "Current content: #{editor.content}"
end