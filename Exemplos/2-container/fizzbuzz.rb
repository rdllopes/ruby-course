# Ainda o problema do FizzBuzz, mas com a seguinte restrição:
# o problema deve ser resolvido com programação funcional
fizz = [nil, nil, 'Fizz'].cycle
buzz = [nil, nil, nil, nil, 'Buzz'].cycle
 
(1..100).zip(fizz, buzz) do |number, fizz, buzz|
  fizzbuzz = [fizz, buzz].join
  puts fizzbuzz.empty? ? number : fizzbuzz
end