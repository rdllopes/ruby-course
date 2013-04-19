#!//Users/rlopes/.rvm/rubies/ruby-1.9.3-p194/bin/ruby
regexp = "(.*)(\\\\#\\\\#)(.*)"
replace = "---\n"
pattern = Regexp.new(regexp)

ARGF.each do |line|
  match = pattern.match(line)
  if match.nil?
   puts line
   next
  end
  puts "---\n"
  puts match[1] + match[3]
end