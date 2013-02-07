Sistema Robô
=============

Simples programa de um robô em ruby que navega pelo plano carteziano seguindo um arquivo com comando. (teste em rspec)

Teste com RSpec
---------------

Para executar os testes:

    bundle
    rspec

Você vai precisar do bundler, ruby-gems, etc... Se você não sabe o que rspec e não quer saber pule para o próximo passo.

Executar o programa
-------------------

Simplesmente, invocar a classe run:

    ruby run.rb [arquivo_de_comandos]
  
onde arquivo_de_comandos é um arquivo texto contendo os comandos do robô.

- L - Virar 90 graus para a esquerda
- R - Virar 90 graus para a direita
- M - Mover um passo para frente
- T - Se tele-transportar para uma determinada célula 

O robô anda em um plano cartesiano, em um espaço de tamanho especifico, com quatro direções Norte(N), Sul (S), Leste (E), Oeste (W). Ele não pode se mover ou tele transportar para fora desse espaço. O input do problema vem de um arquivo com o seguinte formato:

- 1a linha: o tamanho do espaço que o robô pode usar - X Y
- 2a linha: localização inicial do robô e sua direção - X Y D
- 3a linha em diante: comandos do robô sem separação. A exceção é o comando de teletransporte, que deve ficar em sua própria linha com o seguinte formato - T X Y

Um exemplo (sem os comentários):

    10 10              # o tamanho do espaço é 10 por 10
    2 5 N              # sua localização inicial é (2,5) e a sua direção é Norte
    LLRRMMMRLRMMM      # um conjunto de comandos
    T 1 3              # o robô se tele transporta para o ponto (1,3)
    LLRRMMRMMRM        # um outro conjunto de comandos


Exemplo:

    ruby run.rb teste.txt

Outra forma de executar é pelo utilitário Make.

    make

Ou utilizando parâmetros:

    make ARGS="arquivo.txt"