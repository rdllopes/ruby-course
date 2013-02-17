#!//Users/rlopes/.rvm/rubies/ruby-1.9.3-p194/bin/ruby

require "active_support/all"

ARGF.each do |line|
  puts line.mb_chars.normalize(:kd).gsub(/[^\x00-\x7F]/,'')  
end

