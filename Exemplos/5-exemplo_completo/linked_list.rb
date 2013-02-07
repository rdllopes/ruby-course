#Implementar uma lista duplamente ligada circular

class Node
  include Enumerable  
  attr_accessor :next, :previous, :v
  
  def initialize(v = {})
    @v = v
  end
  
  def <<(node)
    node.next = self.next
    node.previous = self
    self.next.previous = node unless self.next.nil?
    self.next = node
  end
  
  def remove
  	node = self.previous
  	node.next = self.next
  	self.next.previous = node
  	self
  end
  
  def to_s
    v.to_s
  end
  
  def each
    node = self.next
    until node == self || node.nil?
      yield node
      node = node.next
    end
  end
  
end

head = Node.new(10000)
(1..10).each { |i|
  head << Node.new(i)
  puts head.map {|node| node.to_s}.join","
}