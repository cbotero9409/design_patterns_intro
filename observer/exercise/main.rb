# main.rb

require_relative 'news_service'
require_relative 'user'

news_service = NewsService.new

user1 = User.new('Camilo')
user2 = User.new('Lorena')
user3 = User.new('Elena')

news_service.subscribe(user1)
news_service.subscribe(user2)
news_service.subscribe(user3)

news_service.publish_news('First news :D')

news_service.unsubscribe(user2)

news_service.publish_news('Second news :D')
