# editor.rb

require_relative 'memento'

class Editor
  attr_accessor :content

  def initialize(content = "")
    @content = content
  end

  def generate_memento
    Memento.new(@content)
  end

  def restore(memento)
    @content = memento.content
  end
end