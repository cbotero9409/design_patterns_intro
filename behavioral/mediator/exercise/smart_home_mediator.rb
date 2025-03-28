# smart_home_mediator.rb

class SmartHomeMediator
  def notify(sender, event)
    raise NotImplementedError, 'Subclasses must implement notify'
  end
end