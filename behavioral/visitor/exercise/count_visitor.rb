# count_visitor.rb

require_relative 'visitor'

class CountVisitor < Visitor
  attr_reader :file_count, :folder_count

  def initialize
    @file_count = 0
    @folder_count = 0
  end

  def visit_file(file)
    @file_count += 1
  end

  def visit_folder(folder)
    @folder_count += 1
    folder.elements.each { |element| element.accept(self) }
  end
end