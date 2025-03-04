# notification.rb

class Notification
  def initialize(notification_sender)
    @notification_sender = notification_sender
  end

  def call_send_notification(_msg)
    raise NotImplementedError, 'You must implement this method'
  end

  private

  def send_notification(type, msg)
    @notification_sender.call_send_message(type, msg)
  end
end