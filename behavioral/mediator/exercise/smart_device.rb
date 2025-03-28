# smart_device.rb

class SmartDevice
  def initialize(mediator)
    @mediator = mediator
    mediator.register_device(self)
  end
end