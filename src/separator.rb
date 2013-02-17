#!//Users/rlopes/.rvm/rubies/ruby-1.9.3-p194/bin/ruby

ARGF.each do |line|
 puts line.gsub("\\#\\#", "---\n")
end