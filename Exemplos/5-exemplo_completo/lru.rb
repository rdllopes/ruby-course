# Least Recently Used (LRU): discards the least recently used items first. This algorithm requires keeping 
# track of what was used when, which is expensive if one wants to make sure the algorithm always discards 
# the least recently used item. General implementations of this technique require keeping "age bits" for 
# cache-lines and track the "Least Recently Used" cache-line based on age-bits. 

require "./linked_list"

class LRU
  attr_reader :head, :capacity, :map
	
	def initialize(capacity)
	  @map = {}
		@capacity = capacity
		@head = Node.new
		head << head 
	end
	
	def []=(k, v)
	  return unless [k].nil?
		node = Node.new(:k => k, :v => v)
		map[k]= node
		head << node
		if (map.size > capacity) 
			previous = head.previous
			previous.remove
			map.delete(previous.v[:k])
		end
	end
	
	def [](k)
		node = map[k]
		return nil if node.nil?
		node.remove
		head << node
		node.v
	end
	
	def to_s
    head.map { |n| n.v[:v]}.to_s
  end
end

cache  = LRU.new(5)
r = Random.new
(1..100).each {
  v = r.rand(10)
  cache[v] = v if cache[v].nil?
  puts cache
  v = r.rand(5) + 5
  cache[v] = v if cache[v].nil?
  puts cache
}
