class Proxy
  def initialize(object)
    @object = object
  end
  
  def method_missing(m, *args, &block)
    puts 'chamada proxificada'
    @object.send(m, *args, &block)
  end 
end