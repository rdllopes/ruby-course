# Escreva um programa que imprima o numero de 1 a 100.
# Mas, para multiplos de tres, imprima "Fizz" no lugar do
# numero e para multiplos de cinco imprima "Buzz". Para
# numeros que sao multiplos de ambos tres e cinco
# imprima "FizzBuzz"
# http://www.rubyquiz.com/quiz126.html
# Solucao tosca
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