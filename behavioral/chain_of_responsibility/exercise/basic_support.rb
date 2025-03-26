# basic_support.rb

require_relative 'support_handler'

class BasicSupport < SupportHandler
  def handle_request(request)
    if request == :basic
      puts "Basic support handled the request"
    else
      pass_to_next(request)
    end
  end
end