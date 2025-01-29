class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def clone
    Marshal.load(Marshal.dump(self))
  end
end