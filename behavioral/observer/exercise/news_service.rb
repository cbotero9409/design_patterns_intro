# news_service.rb

class NewsService
  def initialize
    @users = []
  end

  def subscribe(user)
    @users << user
  end

  def unsubscribe(user)
    @users.delete(user)
  end

  def publish_news(news)
    @users.each do |user|
      user.notify(news)
    end
  end
end