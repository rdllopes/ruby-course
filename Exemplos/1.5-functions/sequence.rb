# A seguinte sequência iterativa é definida pelo conjunto de inteiros positivos onde:
# 
# n -> n/2 (se n é par) 
# n -> 3n + 1 (se n é impar)
# 
# Usando as regras acima e começando pelo número 13, nós geraríamos a seguinte sequência:
# 
# 13 40 20 10 5 16 8 4 2 1
# 
# O que pode ser observado dessa sequência (começando no 13 e terminando no 1) é que ela contém 10 items. Embora ainda não esteja matematicamente provado, é esperando que, dado um numero inteiro positivo qualquer, a sequencia sempre chegará em 1.
# Qual inteiro positivo abaixo de 1 milhão, produz a sequencia com mais items?

def seq_size(n)
  i = 1
  while n > 1
    if (n % 2 == 0)
      n = n / 2
    else
      n = 3*n +1
    end
    i+=1
  end
  i
end
 
def max_seq(n, &block)
  (1..n).inject(0){ |max, i|
    j = seq_size(i)
    if (j > max)
      max = j
      block.call(i,j)
    end
    max
  } 
end

max_seq(1000) {|i,j| puts "#{i}:#{j}"}