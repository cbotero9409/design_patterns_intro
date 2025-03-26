# main.rb

require_relative 'basic_support'
require_relative 'technical_support'
require_relative 'manager'

basic_support = BasicSupport.new
technical_support = TechnicalSupport.new
manager = Manager.new

basic_support.next_handler = technical_support
technical_support.next_handler = manager

requests = %i[basic technical manager unknown]
requests.each do |request|
  basic_support.handle_request(request)
end