# uma forma bem simples de calcular a função derivada.
# A função derivada df de f é definida pelo limite:
# lim h->0 (f(x+h) - f(h))/h 
# em latex... lim_{h \to 0}  \frac{f(x+h) - f(x)}{h}
def d(f)
   lambda {|x|
     dx = 0.0000000001
     dx = dx * x if x < 1 && 0 < x
     (f[x+dx]-f[x])/dx
   }
end
f = lambda {|x| x**2}
puts d(f)[4]

