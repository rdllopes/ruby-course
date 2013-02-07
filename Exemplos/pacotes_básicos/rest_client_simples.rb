#extrair documentos JSON de um Web Service

require "net/http"
require "uri"
require 'json'
#require 'methodize'

uri = URI.parse("http://localhost:8080/jdb/list")
response = Net::HTTP.get_response(uri)
json = JSON.parse(response.body)
#json.extend(Methodize)