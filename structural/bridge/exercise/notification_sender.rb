# notification_sender.rb

class NotificationSender
  def call_send_message
    raise NotImplementedError, 'You must implement this method'
  end

  private

  def send_message(type, notification, msg)
    puts "#{notification.capitalize} via #{type.capitalize}: #{msg}"
  end
end