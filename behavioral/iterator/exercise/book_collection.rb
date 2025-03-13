# book_collection.rb

require_relative 'iterator'

class BookCollection
  attr_reader :books

  def initialize
    @books = []
  end

  def add_book(book)
    @books << book
    self
  end

  def create_iterator
    Iterator.new(self)
  end

  def get_element(index)
    get_book(index)
  end

  def size
    @books.size
  end

  private

  def get_book(index)
    @books[index]
  end
end