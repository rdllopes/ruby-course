# verifica se um arquivo possui seu prefixo dentro do seu conteúdo

Dir.glob("*/*/*.xml") do |file|
  host = File.basename(file, ".xml")
  a = open(file).grep(Regexp.new host)
  puts file if a.empty?
end