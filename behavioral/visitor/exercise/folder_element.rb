# folder.rb

require_relative 'file_system_element'

class FolderElement < FileSystemElement
  attr_reader :elements

  def initialize
    @elements = []
  end

  def accept(visitor)
    visitor.visit_folder(self)
  end

  def add_element(element)
    @elements << element
  end
end