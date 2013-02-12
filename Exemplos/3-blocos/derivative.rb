# uma forma bem simples de calcular a função derivada.
# A função derivada df de f é definida pelo limite:
# lim h->0 (f(x+h) - f(h))/h 
# em latex... lim_{h \to 0}  \frac{f(x+h) - f(x)}{h}
def d(f)
   lambda {|x|
     dx = 0.0000000001
     dx = dx * x if x.abs < 1 && 0 < x.abs
     (f[x+dx]-f[x])/dx
   }
end
f = lambda {|x| x**2}
puts d(f)[4]



def lim(f,h)
 y=h
 rest = 1.0
 while (true)
   rest = rest/10
   x = h + rest ##increase how close x is to h 1.0,0.1,0.001 etc..
   fx=f[x] ##get f(x)
   break if y==fx ##if we start getting the same val, stop
   y=fx ##store the last val
 end
 y ##return where we stopped
end

ddx=lambda {|f|
 lambda {|x|
  lim(lambda{|dx| ##the limit of the derivative function
   (f[x+dx]-f[x])/dx
  },0) #as h approaches 0
 }
}
puts ddx[f][4]
