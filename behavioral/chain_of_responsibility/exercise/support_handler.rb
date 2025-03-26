# support_handler.rb

class SupportHandler
  def initialize
    @next_handler = nil
  end

  def handle_request(request)
    raise NotImplementedError
  end

  def next_handler=(handler)
    @next_handler = handler
  end

  protected

  def pass_to_next(request)
    if @next_handler
      @next_handler.handle_request(request)
    else
      puts "Request not handled"
    end
  end
end