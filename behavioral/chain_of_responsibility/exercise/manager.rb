# manager.rb

require_relative 'support_handler'

class Manager < SupportHandler
  def handle_request(request)
    if request == :manager
      puts "Manager handled the request"
    else
      pass_to_next(request)
    end
  end
end