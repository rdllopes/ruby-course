require "test/unit"

class Book
  
  attr_reader :isbn, :title, :price
  
  def initialize(isbn, title, price)
    @isbn = isbn
    @title = title
    @price = price.to_f
  end
  def self.parse(string)
    array = string.split(',')
    
    Book.new(array[0], array[1], array[2])
  end
  
  
end

class BookRead
  def self.read(path)
    file = File.open path , "r"
    books = file.readlines
    books.shift
    books.map do |string|
      Book.parse(string)
    end
  end
  
  
end



class BooksTest < Test::Unit::TestCase
  def test_converte_string_para_objeto_book
    book = Book.parse("1234,Titulo,30.50")
    
    assert_equal "1234", book.isbn
    assert_equal "Titulo", book.title
    assert_equal 30.50, book.price
  end
  
  def test_retornar_array_de_um_arquivo
    books = BookRead.read("./books.txt")
    book = books.first
    assert_equal "1234", book.isbn
    assert_equal "Titanic", book.title
    assert_equal 25.99, book.price
  end
  
  
end
