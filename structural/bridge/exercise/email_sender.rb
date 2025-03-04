# email_sender.rb

require_relative 'notification_sender'

class EmailSender < NotificationSender
  def call_send_message(notification, msg)
    send_message('email', notification, msg)
  end
end