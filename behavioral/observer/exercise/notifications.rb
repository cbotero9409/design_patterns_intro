# notifications.rb

module Notifications
  def notify(_news)
    raise NotImplementedError, "You must implement method notify in your observer"
  end
end