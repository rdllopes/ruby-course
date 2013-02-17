#extrair documentos JSON de um Web Service

require "net/http"
require "uri"
require 'json'
require 'methodize'

def get_page (string)
  uri = URI.parse(string)
  response = Net::HTTP.get_response(uri)
  json = JSON.parse(response.body)
  json.extend(Methodize)
end

proxima =get_page ("http://editorial.api.abril.com.br/materias/busca")
until proxima.nil?
  puts proxima
  proxima = proxima.link.find {|link| link.rel == "proxima"}.href
  proxima = get_page(proxima) unless proxima.nil?
end
  
