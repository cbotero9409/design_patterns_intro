# command.rb

class Command
  def execute
    raise NotImplementedError, 'You must implement this method'
  end
end