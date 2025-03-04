# alert_notification.rb

require_relative 'notification'

class AlertNotification < Notification
  def call_send_notification(msg)
    send_notification('alert', msg)
  end
end