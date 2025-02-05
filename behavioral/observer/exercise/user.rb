# user.rb

require_relative 'notifications'

class User
  include Notifications

  def initialize(name)
    @name = name
  end

  def notify(news)
    puts "#{@name} has received news: #{news}"
  end
end