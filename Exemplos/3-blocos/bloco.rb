def proxy_method
  puts "Calling command at: #{Time.new}"
  yield
end

proxy_method { puts "hello world proxified!"}


def proxy_method
   yield(Time.new)
end
proxy_method {|time| puts "hello world proxified!  At #{time}"}


def proxy_method (&method)
   method.call(Time.new)
end
proxy_method {|time| puts "hello world proxified  at #{time}"}
