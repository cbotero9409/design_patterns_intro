# memento.rb

class Memento
  attr_reader :content

  def initialize(content)
    @content = content
  end
end