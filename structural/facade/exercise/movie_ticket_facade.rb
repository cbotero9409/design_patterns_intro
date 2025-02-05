# movie_ticket_facade.rb

require_relative 'reservation_system'
require_relative 'payment_system'
require_relative 'notification_system'

class MovieTicketFacade
  def initialize
    @reservation = ReservationSystem.new
    @payment = PaymentSystem.new
    @notification = NotificationSystem.new
  end

  def buy_ticket
    @payment.pay
    @reservation.reserve
    @notification.notify
  end
end