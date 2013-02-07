def d(f)
   lambda {|x|
     dx = 0.0000000001
     dx = dx * x if x < 1 && 0 < x
     (f[x+dx]-f[x])/dx
   }
end
f = lambda {|x| x**2}
puts d(f)[4]