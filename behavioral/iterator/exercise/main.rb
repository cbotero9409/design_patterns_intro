# main.rb

require_relative 'book'
require_relative 'book_collection'
require_relative 'iterator'

book1 = Book.new("1984", "George Orwell")
book2 = Book.new("Brave New World", "Aldous Huxley")
book3 = Book.new("Fahrenheit 451", "Ray Bradbury")

book_collection = BookCollection.new
book_collection.add_book(book1).add_book(book2).add_book(book3)

iterator = book_collection.create_iterator

while iterator.has_next?
  book = iterator.next
  puts "#{book.title} by #{book.author}"
end