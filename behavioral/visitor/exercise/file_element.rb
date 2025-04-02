# file.rb

require_relative 'file_system_element'

class FileElement < FileSystemElement
  def accept(visitor)
    visitor.visit_file(self)
  end
end