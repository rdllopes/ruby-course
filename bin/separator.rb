#!/usr/bin/env ruby

regexp = "(.*)(\\\\#\\\\#)(.*)"
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