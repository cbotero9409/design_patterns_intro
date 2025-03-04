# sms_sender.rb

require_relative 'notification_sender'

class SmsSender < NotificationSender
  def call_send_message(notification, msg)
    send_message('sms', notification, msg)
  end
end