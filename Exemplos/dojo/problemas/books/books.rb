# encoding: utf-8

require "erb"

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
    books = File.open(path , "r").readlines

    books.shift # removendo o cabecalho

    books.map do |string|
      Book.parse(string)
    end
  end
end

class BookHtml

  def initialize(path, lista)
  @arquivo = path
  @books = lista
  end
  
  def export
   template = File.new(@arquivo).read
   html = ERB.new(template)
   html.result(binding)
  end
  
end


require "test/unit"


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
    lista = [Book.new("1234", "Titanica", 45.90)]
    book_html = BookHtml.new('./books.erb.html', lista)
    assert_match /Titanic/, book_html.export
  end
end












=begin
require "erb"

template = File.new('./template.erb.html').read

html = ERB.new(template)

lista = %w[banana pera uva tomate arroz]

puts html.result(binding)
=end