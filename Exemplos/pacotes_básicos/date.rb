require 'date'

parsed_time = DateTime.strptime('03/05/2010 14:25:00', '%d/%m/%Y %H:%M:%S')

puts parsed_time.to_s
#=> "2010-05-03T14:25:00+00:00"