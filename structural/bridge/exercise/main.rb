# main.rb

require_relative 'email_sender'
require_relative 'sms_sender'
require_relative 'alert_notification'
require_relative 'reminder_notification'

email_sender = EmailSender.new
sms_sender = SmsSender.new

alert_notification_email = AlertNotification.new(email_sender)
alert_notification_sms = AlertNotification.new(sms_sender)
reminder_notification_email = ReminderNotification.new(email_sender)

alert_notification_email.call_send_notification('hola')
alert_notification_sms.call_send_notification('compra tu paquete')
reminder_notification_email.call_send_notification('recuerda tomar agua')