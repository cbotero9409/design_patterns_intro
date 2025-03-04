# reminder_notification.rb

require_relative 'notification'

class ReminderNotification < Notification
  def call_send_notification(msg)
    send_notification('reminder', msg)
  end
end