# DojoPuzzle <http://dojopuzzles.com/>

---
## FizzBuzz

<http://dojopuzzles.com/problemas/exibe/fizzbuzz/>

Neste problema, você deverá exibir uma lista de 1 a 100, um em cada linha, com as seguintes exceções:
Números divisíveis por 3 deve aparecer como 'Fizz' ao invés do número;
Números divisíveis por 5 devem aparecer como 'Buzz' ao invés do número;
Números divisíveis por 3 e 5 devem aparecer como 'FizzBuzz' ao invés do número'.

---
## Números Felizes
<http://dojopuzzles.com/problemas/exibe/numeros-felizes/>

Para saber se um número é feliz, você deve obter o quadrado de cada dígito deste número, em seguida você faz a soma desses resultados. A seguir o mesmo procedimento deve ser feito com o valor resultante desta soma. Se ao repetir o procedimento diversas vezes obtivermos o valor 1, o número inicial é considerado feliz.
Tomamos o 7, que é um número feliz:
7² = 49
4² + 9² = 97
9² + 7² = 130
1² + 3² + 0² = 10
1² + 0² = 1
Podemos observar nesse exemplo que os números 49, 97, 130 e 10 também são felizes. Existem infinitos números felizes.
E um número triste? Como sabemos que um número não será feliz?
Desenvolva um programa que determine se um número é feliz ou triste.

---
## Analisando URLs
<http://dojopuzzles.com/problemas/exibe/analisando-urls/>

Dada uma URL, desenvolva um programa que indique se a URL é válida ou não e, caso seja válida, retorne as suas partes constituintes.

Exemplos:

Entrada: http://www.google.com/mail/user=fulano
Saída:
protocolo: http
host: www
domínio: google.com
path: mail
parâmetros: user=fulano

Entrada: ssh://fulano%senha@git.com/
Saída:
protocolo: ssh
usuário: fulano
senha: senha
dominio: git.com

---
## Calculando estatísticas simples
<http://dojopuzzles.com/problemas/exibe/calculando-estatisticas-simples/>

Sua tarefa é processar uma seqüência de números inteiros para determinar as seguintes estatísticas:
Valor mínimo
Valor máximo
Número de elementos na seqüência
Valor médio

Por exemplo para uma seqüência de números "6, 9, 15, -2, 92, 11", temos como saída:

Valor mínimo: -2
Valor máximo: 92
Número de elementos na seqüência: 6
Valor médio: 18.1666666

---
## Cheque por Extenso
<http://dojopuzzles.com/problemas/exibe/cheque-por-extenso/>

Apesar de o volume de cheques emitidos tenha diminuído drásticamente nos últimos anos, principalmente devido a popularização dos cartões de crédito e débito, eles ainda são utilizados em muitas compras, especialmente a de valores altos. E para auxiliar no seu preenchimento, vários estabelecimentos possuem máquinas que dado o valor da compra, preenchem o cheque com o seu valor por extenso.

Desenvolva um programa que dado um valor monetário, seja retornado o valor em reais por extenso.
Exemplo:

15415,16 -> quinze mil quatrocentos e quinze reais e dezesseis centavos
0,05 -> cinco centavos
2,25 -> dois reais e vinte e cinco centavos

---
## Contando as letras dos números
<http://dojopuzzles.com/problemas/exibe/contando-as-letras-dos-numeros/>

Se os números de 1 a 5 fossem escritos em palavras: um, dois, três, quatro, cinco, então teríamos utilizado 2 + 4 + 4 + 6 + 5 = 21 letras no total.
Se todos os números de 1 até 1000 fossem escritos em palavras, quantas letras nós teríamos utilizado?

---
## Jokenpo
<http://dojopuzzles.com/problemas/exibe/jokenpo/>

Jokenpo é uma brincadeira japonesa, onde dois jogadores escolhem um dentre três possíveis itens: Pedra, Papel ou Tesoura.
O objetivo é fazer um juiz de Jokenpo que dada a jogada dos dois jogadores informa o resultado da partida.
As regras são as seguintes:
Pedra empata com Pedra e ganha de Tesoura
Tesoura empata com Tesoura e ganha de Papel
Papel empata com Papel e ganha de Pedra

---
## Números Romanos
<http://dojopuzzles.com/problemas/exibe/numeros-romanos/>

O sistema de numeração romana (ou números romanos) desenvolveu-se na Roma Antiga e utilizou-se em todo o seu Império. Neste sistema as cifras escrevem-se com determinadas letras, que representam os números. As letras são sempre maiúsculas, já que no alfabeto romano não existem as minúsculas, as letras são I, V, X, L, C, D e M.
Sua tarefa é desenvolver um programa que converta números indo-arábicos para o formato romano e vice-versa. As regras para a formação dos números romanos são apresentadas a seguir.

Cada letra corresponde a um determinado valor:

* I = 1
* V = 5
* X = 10
* L = 50
* C = 100
* D = 500
* M = 1000

Agrupando as letras acima, podemos representar os números de acordo com um conjunto de regras:
Com exceção de V, L e D, os outros numerais podem se repetir no máximo três vezes:

III = 3
XXX = 30
CCC = 300
MMM = 3000

Quando escritos à direita de numerais maiores, I, X e C somam-se aos valores dos primeiros:

VIII = 5 + 1 + 1 + 1 = 8
LXII = 50 + 10 + 1 + 1 = 62
CLVIII = 158
MCXX = 1000 + 100 + 10 + 10 = 1120

Mas se os numerais I, X e C estiverem à esquerda dos maiores, seus valores são subtraídos como, por exemplo, em:

IV = 5 - 1 = 4
IX = 10 - 1 = 9
XC = 100 - 10 = 90

---
## Quebra de Linha
<http://dojopuzzles.com/problemas/exibe/quebra-de-linha/>

Escreva um programa em que dado uma frase e a quantidade de colunas que podem ser exibidas na tela, faça a quebra de linhas sem quebrar as palavras.
Por exemplo, se passarmos a frase "Um pequeno jabuti xereta viu dez cegonhas felizes." e pedirmos para ela ser exibida em 20 colunas, teremos como resposta:
Um pequeno jabuti
xereta viu dez
cegonhas felizes.

---
## Troco
<http://dojopuzzles.com/problemas/exibe/troco/>

Funcionários de empresas comerciais que trabalham como caixa tem uma grande responsabilidade em suas mãos. A maior parte do tempo de seu expediente de trabalho é gasto recebendo valores de clientes e, em alguns casos, fornecendo troco.
Seu desafio é fazer um programa que leia o valor total a ser pago e o valor efetivamente pago, informando o menor número de cédulas e moedas que devem ser fornecidas como troco.
Deve-se considerar que há:
cédulas de R$100,00, R$50,00, R$10,00, R$5,00 e R$1,00;
moedas de R$0,50, R$0,10, R$0,05 e R$0,01.
