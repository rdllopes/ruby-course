# Converter um número inteiro para um número romano
data = [
    ["M"  , 1000],
    ["CM" , 900],
    ["D"  , 500],
    ["CD" , 400],
    ["C"  , 100],
    ["XC" ,  90],
    ["L"  ,  50],
    ["XL" ,  40],
    ["X"  ,  10],
    ["IX" ,   9],
    ["V"  ,   5],
    ["IV" ,   4],
    ["I"  ,   1]
    ]
# x = Integer(gets)
x = 1567
i = 0
roman =""
while (i < data.size)
  if data[i][1] > x
     i = i +  1
     next
  end
  x = x - data[i][1]
  roman = roman + data[i][0]
end
puts roman