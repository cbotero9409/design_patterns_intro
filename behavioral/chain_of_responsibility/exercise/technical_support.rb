# technical_support.rb

require_relative 'support_handler'

class TechnicalSupport < SupportHandler
  def handle_request(request)
    if request == :technical
      puts "Technical support handled the request"
    else
      pass_to_next(request)
    end
  end
end