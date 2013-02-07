class LinkedList
#  include Enumerable

  def initialize
    @head = Node.new
    @head << @head
  end
    
  # adiciona elemento a primeira posicao
  def <<(v)
    @head << Node.new(v)
  end
  
  def each
    node = @head.next
    until node == @head
      yield node
      node = node.next
    end
  end
end

#exemplo
list = LinkedList.new 
(1..100).each { |i|
  list << i 
}
list.each { |j|
  puts j
}