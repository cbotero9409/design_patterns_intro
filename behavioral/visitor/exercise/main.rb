# main.rb

require_relative 'file_element'
require_relative 'folder_element'
require_relative 'count_visitor'

file1 = FileElement.new
file2 = FileElement.new
file3 = FileElement.new

folder1 = FolderElement.new
folder2 = FolderElement.new
root = FolderElement.new

folder1.add_element(file1)
folder1.add_element(file2)
folder2.add_element(file3)
root.add_element(folder1)
root.add_element(folder2)

visitor = CountVisitor.new
root.accept(visitor)

puts "Total files: #{visitor.file_count}"
puts "Total folders: #{visitor.folder_count}"