# Escreva um programa que imprima o número de 1 a 100.
# Mas, para múltiplos de três, imprima "Fizz" no lugar do
# número e para múltiplos de cinco imprima "Buzz". Para
# números que são múltiplos de ambos três e cinco
# imprima "FizzBuzz"
# http://www.rubyquiz.com/quiz126.html
# Solução tosca
1.upto(100) do |i|
  if i % 5 == 0 and i % 3 == 0
          puts "FizzBuzz"
  elsif i % 5 == 0
          puts "Buzz"
  elsif i % 3 == 0
          puts "Fizz"
  else
          puts i
  end
end