require "test/unit"
require './books'

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

class BookHtmlTest < Test::Unit::TestCase
  def test_cria_arquivo_html_processado
    book_html = BookHtml.new('./books.erb.html')
    assert_match /Titanic/, book_html.export
  end
end
