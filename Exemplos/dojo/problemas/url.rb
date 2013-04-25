require 'test/unit'

class UrlParser
  
  class InvalidUrlError < RuntimeError; end

  attr_reader :host, :protocolo, :path, :user, :password, :parametro

  REGEXP = /^([^:]+):\/\/(?:(.*?)(?::(.*?))?@)?([^\/\?]*)([^?#]*)?\??(.*)?/

  def initialize(url)
    match = url.match(REGEXP)
    
    raise InvalidUrlError if match.nil?

    @protocolo = match[1] 
    @user = match[2] 
    @password = match[3] 
    @host = match[4] 
    @path = match[5] unless match[5].empty?
    @parametro = match[6] unless match[6].empty?
  end
end


class UrlParserTeste < Test::Unit::TestCase
  def setup
    @url = UrlParser.new("http://user:pass@stackoverflow.com/questions/?materia=ruby-on-rails-import-data-from-a-csv-file")
  end

  def test_obter_host
    assert_equal "stackoverflow.com", @url.host
  end

  def test_obter_protocolo
    assert_equal "http", @url.protocolo
  end

  def test_obter_path
    assert_equal "/questions/", @url.path
  end

  def test_obter_usuario
    assert_equal "user", @url.user
  end

  def test_obter_senha
    assert_equal "pass", @url.password
  end

  def test_obter_parametro
    assert_equal "materia=ruby-on-rails-import-data-from-a-csv-file", @url.parametro
  end

  def test_rejeita_url_invalida
    assert_raises UrlParser::InvalidUrlError do 
      UrlParser.new("adkhshdjasshksadhkjas")
    end
  end
  
  def test_url_simples
    @url = UrlParser.new("http://www.google.com.br")
    assert_equal "www.google.com.br", @url.host, "host invalido"
    assert_equal "http", @url.protocolo, "protocolo invalido"
    assert_nil @url.path, "path invalido"
    assert_nil @url.user, "user invalido"
    assert_nil @url.password, "password invalido"
    assert_nil @url.parametro, "parametro invalido"
  end


  def test_url_com_path
    @url = UrlParser.new("http://www.google.com.br/teste")
    assert_equal "www.google.com.br", @url.host, "host invalido"
    assert_equal "http", @url.protocolo, "protocolo invalido"
    assert_equal "/teste", @url.path
    assert_nil @url.user, "user invalido"
    assert_nil @url.password, "password invalido"
    assert_nil @url.parametro, "parametro invalido"
  end
  
  def test_url_com_parametro
    @url = UrlParser.new("http://www.google.com.br/?id=15")
    assert_equal "www.google.com.br", @url.host, "host invalido"
    assert_equal "http", @url.protocolo, "protocolo invalido"
    assert_equal "/", @url.path
    assert_nil @url.user, "user invalido"
    assert_nil @url.password, "password invalido"
    assert_equal "id=15", @url.parametro
  end
  def test_url_com_usuario
    @url = UrlParser.new("http://user@www.google.com.br")
    assert_equal "www.google.com.br", @url.host, "host invalido"
    assert_equal "http", @url.protocolo, "protocolo invalido"
    assert_equal nil, @url.path
    assert_equal "user", @url.user
    assert_nil @url.password, "password invalido"
    assert_nil @url.parametro, "parametro invalido"
  end
  def test_url_com_usuario_senha
    @url = UrlParser.new("http://user:abril123@www.google.com.br")
    assert_equal "www.google.com.br", @url.host, "host invalido"
    assert_equal "http", @url.protocolo, "protocolo invalido"
    assert_equal nil, @url.path
    assert_equal "user", @url.user
    assert_equal "abril123", @url.password
    assert_nil @url.parametro, "parametro invalido"
  end
  
end
