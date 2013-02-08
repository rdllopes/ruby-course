hash = {}; (1..100).each{|i| hash[i%5] ||= []; hash[i%5] += [i]}; hash

(1..100).group_by {|i| i%5}