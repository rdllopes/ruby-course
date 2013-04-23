
@string = 'ação'

print "length: ", @string.length, "\n"
@string.each_byte {|c| puts c }

puts @string[0]
puts @string[1]
puts @string[2]
puts @string[3]
