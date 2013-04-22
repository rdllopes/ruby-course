<h1 class='capa'>Curso de Introdução a programação com Ruby</h1>
<http://bit.ly/cursorubyabril> - <https://github.com/abril/ruby-course>

---
# Sumário

-   Introdução: Ruby.new
-   Estruturas Básicas
-   Bloco de código
-   Estruturas de Controle
-   Containers e Iterators
-   Classe, Objetos e Variáveis
-   Mais sobre Métodos
-   Tratamento de Exceções
-   Módulos
-   Pacotes básicos
-   ERB (templates em ruby)
-   Dojo

\* Não necessariamente nessa ordem.

---
= data-x="1000" data-scale="2"
# Introdução:Ruby.new

Ruby é uma linguagem de programação **interpretada**, de **tipagem dinâmica e forte**, com **gerenciamento de memória automático**, originalmente planejada e desenvolvida no Japão em 1995, por Yukihiro "Matz" Matsumoto, para ser usada como linguagem de script.

Matz queria uma linguagem de script que fosse mais poderosa do que Perl, e mais orientada a objetos do que Python. Ruby é primariamente, uma linguagem **orientada a objetos**, mas suporta outros paradigmas de programação, como **funcional**, **imperativa** e **reflexiva**.

Foi inspirada principalmente por Python, Perl, Smalltalk, Eiffel, Ada e Lisp, sendo muito similar em vários aspectos a Python.

fonte: [Wikipedia - http://bit.ly/wiki-ruby](http://bit.ly/wiki-ruby)

---
# Introdução:Ruby.new

## Instalação

### Windows

Baixar o executável de instalação em <http://rubyinstaller.org/downloads/>

### Linux (Debian / Ubuntu)*

```bash
$ [sudo] apt-get install ruby1.9.1
```

### Mac (via Homebrew)*

```bash
$ brew install ruby
```

\* Linux e Mac normalmente já vem com uma instalação de Ruby.

---
# Introdução:Ruby.new

Verificar a versão de ruby instalada, digite `ruby --version`

```bash
$ ruby --version
ruby 1.9.3p374 (2013-01-15 revision 38858) [x86_64-darwin10.8.0]
```

\* `ruby -v` também imprime a versão do ruby, porém ativa o modo *verbose* e permite executar scripts.

---
# Introdução:Ruby.new

## Editores

* [Sublime Text 2 (Windows, Linux e Mac)](http://www.sublimetext.com/2)
* [Vim](http://www.vim.org/)
* [Emacs](http://www.gnu.org/software/emacs/)
* [TextMate 2](https://github.com/textmate/textmate/)
* [Netbeans 6.9.1](https://netbeans.org/downloads/6.9.1/index.html)
* [Aptana](http://www.aptana.com/)

---
# Introdução:Ruby.new

Sobre a sintaxe:

* Espaços, tabulações e blocos de comentários serão ignorados pelo interpretador.
* Ponto-e-vírgula e nova linha é considerado um novo comando. Porém, se for encontrado um operador, como `+`, `-`, ou o sinal de `\`, indica que a próxima linha é continuação do comando atual.
* Os identificadores são nomes de variáveis, constantes e métodos e é *case-sensitive*, ou seja, `DNS` e `Dns` são duas constantes diferentes.
* Deve-se usar letras_minúsculas para nomes de variáveis e métodos. `nome_completo`
* Deve-se usar LETRAS_MAIÚSCULAS para nome de CONSTANTES. `MAX_ATTENDEES = 100`
* Deve-se usar *CamelCase* para nome de Classes. `NotificationMailer`


---
# Introdução:Ruby.new

## Hello World!

### via arquivo

```bash
$ echo 'puts "hello world"' > hello_word.rb
$ ruby hello_word.rb
hello world
```

### *one-liner*

```bash
$ ruby -e 'puts "hello world"'
hello world
```

### *Interactive Ruby* (IRB)

```bash
$ irb
>> puts 'hello world'
hello world
=> nil
>>
```

---
# Introdução: Ruby.new

### Compare este laço:

```ruby
5.times { print 'Ola!' }
```

### com este em PHP:

```php
for (int i=0; i <10; i++) { printf("Ola!");}
```

---
# Estruturas básicas

Exceto para bloco de código, que será visto mais a frente, tudo em Ruby é um objeto.

```javascript
>> 1.class
=> Fixnum
>> "texto".class
=> String
>> :simbolo.class
=> Symbol
>> true.class
=> TrueClass
>> false.class
=> FalseClass
>> nil.class
=> NilClass
>> Object.class
=> Class
>> Class.class
=> Class
```


---
# Estruturas básicas

Já falei que em Ruby, TUDO é objeto?

```ruby
>> 1.methods.count
=> 130
> 1.methods.sort
=> [:!, :!=, :!~, :%, :&, :*, :**, :+, :+@, :-, :-@, :/, :<, :<<, :<=, :<=>, :==, :===,
:=~, :>, :>=, :>>, :[], :^, :__id__, :__send__, :abs, :abs2, :angle, :arg, :between?,
:ceil, :chr, :class, :clone, :coerce, :conj, :conjugate, ...]
>> 'texto'.methods.count
=> 162
>> 'texto'.methods.sort
=> [:!, :!=, :!~, :%, :*, :+, :<, :<<, :<=, :<=>, :==, :===, :=~, :>, :>=, :[], :[]=,
:__id__, :__send__, :ascii_only?, :between?, :bytes, :bytesize, :byteslice, ...]
```

---
# Estruturas básicas

## Comentários

Comentários são trechos em seu código que não serão processados pelo interpretador. Serve para documentar seu código.

### Uma linha
```ruby
# Esta linha é um comentário.
1 + 1 # este texto a direita do sinal de # também é um comentário.
```

### Múltiplas linhas

```ruby
=begin
O texto envolvido por =begin e =end é comentário.
Mas para isto funcionar, o =begin e =end devem estar
na exterma esquerda do seu código, ou seja, na coluna
0 (zero).
=end
```

---
# Estruturas básicas

## Números

### Inteiros

```ruby
123                       # Inteiro (Fixnum)
-123                      # Inteiro negatico (Fixnum)
1_123                     # Inteiro (Fixnum)
123_456_789_123_456_789   # Inteiro (Bignum)
0xAB                      # Número Hexadecimal (170)
0377                      # Número Octal (255)
0b001001                  # Número binário (9)
```

### Flutuantes
```ruby
123.45                    # Número com ponto flutuante (Float)
1.2e-3                    # Número com ponto flutuante (0.0012)
```

---
# Estruturas básicas

## String `'single quotes'`

```ruby
>> puts 'texto'
texto
>> puts 'texto'.length
5
>> puts 'texto'.upcase
TEXTO
>> puts 'tex'.+('to')
texto
>> puts 'tex' + 'to' # syntax sugar
texto
>> puts 'tex' << 'to'
texto
>> String.new << 'texto'
texto
>> 'tex%s' % 'to'
texto
```

Para usar os caracteres `'` ou `\`, você pode usar sequência de *escape* `\'` e `\\`.

```ruby
>> puts 'texto \' \\'
texto ' \
```

---
# Estruturas básicas

## String `"double quotes"`

Existe uma diferença entre construir strings com aspas simples e aspas duplas. Strings montadas com aspas duplas, aceitam interpolação de conteúdo para construir a string final.

```ruby
>> puts "o resultado de 1 + 1 é #{ 1 + 1 }."
o resultado de 1 + 1 é 2.
>> puts 'o resultado de 1 + 1 é #{ 1 + 1 }.'
o resultado de 1 + 1 é #{ 1 + 1 }.
```

O valor da expressão a ser interpolada, será o resultado do método `to_s` do objeto.

Sequências de *escape*

<div style='float:right;width:60%'>
<pre class='prettyprint'><code class='language-ruby'>>> puts "hello\nworld"
hello
world
>> puts "      world\rhello"
hello world
>> puts "\thello \b\sworld"
    hello world
>> puts '\thello \b\sworld'
\thello \b\sworld
</code></pre>
</div>

* `\"` – double quote
* `\\` – single backslash
* `\a` – bell/alert
* `\b` – backspace
* `\r` – carriage return
* `\n` – newline
* `\s` – space
* `\t` – tab

---
# Estruturas básicas

## String multiplas linhas

<pre class='prettyprint'><code class='language-ruby'>>> puts <&lt;DOC
Esta é uma string em múltiplas linhas.
    * item
    * item
    * item
DOC
# Resultado
Esta é uma string em múltiplas linhas.
    * item
    * item
    * item
</code></pre>

Se quiser identar o finalizaror, para usar `<<-`.

<pre class='prettyprint'><code class='language-ruby'>>> puts <<-DOC
Esta é uma string em múltiplas linhas.
    * item
    * item
    * item
    DOC
# Resultado
Esta é uma string em múltiplas linhas.
    * item
    * item
    * item
</code></pre>

\* aceita interpolação.

---
# Estruturas básicas

## Símbolos

Os símbolos são ideais para serem usados como chave em `Hash`.

```ruby
:x, :y, :chave
```

Símbolos são alocados uma única vez: `:a.object_id` durante uma execução sempre retornara o mesmo valor. Isso não acontece com string.

O método `equal?` só devolve `true` se dois objetos são de fato o mesmo objeto (e instâncias da mesma classe com valores iguais).

```ruby
1.equals?(1)             # => true
:key.equals?(:key)       # => true
"texto".equals?("texto") # => false
```

---
# Containers

## Array (Lista)

```ruby
a = [ 3.14159, "pie", 99 ]
a.type   #        Array
a.length #        3
a[0]     #        3.14159
a << 1
a[3]     #        1
a[-2]    #        99
b = Array.new
b << a   #   [[3.14159, "pie", 99, 1]]
b[0..3] = a    #   [3.14159, "pie", 99, 1]
b[0, 2] = 1    #   [1, 1]
c = %w{a b c d e }  #  =>  ["a", "b", "c", "d"]
```

\* Os valores em um `Array` é apenas uma referência para a instância do objeto em memória

---
# Containers

## Hash (Dicionário) - é uma lista não ordenada, mas com chave e valor

```ruby
h = {:dog => 'canine', :cat => 'feline', :donkey => 'asinine'}
h.length            #        3
h[:dog]             #        "canine"
h[:cow] = 'bovine'
h[12]   = 'dodecine'
h[:cat] = 99
h
=> {:cow=>"bovine", :cat=>99, 12=>"dodecine", :donkey=>"asinine", :dog=>"canine"}

a = [[1, 'a'],[2, 'b'],[3, 'c'], [4, 'd']]
b = Hash[a]
# => {1=>"a", 2=>"b", 3=>"c", 4=>"d"}
```

## Ranger (Intervalos)

```ruby
puts (4..9).include? 7  # => true
```

---
# Variáveis e Escopo

```ruby
$variavel_global

@@variavel_de_classe

@variavel_de_instancia

[Classe::]CONSTANTE

variavel_local
```

---
# Pseudo variáveis

```ruby
self     # é o contexto atual que será usado para enviar mensagem
true
false
nil
__FILE__ # nome do arquivo de script atual em execução
__LINE__ # número da linha atual do script em execução
```

---
# Variáveis pré definidas

```ruby
$0        # nome do processo atual em execução
$$        # PID do processo atual no SO
$stdin    # entrada padrão de dados (STDIN)
$stdout   # saída padrão de dados (STDOUT)
$VERBOSE  # retorna true se script carregado com -v, --verbose ou -w
$[numero] # retorna o grupo referente a ùltima expressão regular executada
```

\* Esta é uma lista reduzida.

---
# Constantes pré definitas

```ruby
TRUE    # == true
FALSE   # == false
NIL     # == nil
ARGV    # Array com a lista de parametros passados no momento de execução do script.
ENV     # Um hash com todas as variáveis de ambiente do seu sistema.
```

\* Esta é uma lista reduzida.

---
# Expressão regular

Expressão regular pode ser declarada entre `/` ou usando o operador `%r`

```ruby
/pattern/
%r[pattern]
```

Após a declaração do padrão, pode-se aplicar modificadores, após `/`, e são eles: `i` ignorar case, `o` permitir interpolação, `x` ignorar espaços e permitir comentários e `m` fazer busca em múltiplas linhas, reconhecendo o caracter de nova linha `\n`

```ruby
/pattern/i
```

---
# Estruturas de Controle

## Condicional `if`

### Exemplo Completo

```ruby
count = gets.chomp.to_i

if count > 10
  puts "Try again"
elsif tries == 3
  puts "You lose"
else
  puts  "Number: #{count}"
end
```

### Exemplo Simples

```ruby
if radiation > 3000
  puts "Danger"
end
```

### Modificador de Sentenca

```ruby
puts "Danger, Will Robinson" if radiation > 3000
```

---
# Estruturas de Controle

## Condicional `unless`

É o inverso do condicional `if`. Então, ao invés de usar:

```ruby
if not 'abc'.include? grau
  puts 'você está de recuperação'
end
```

use...

```ruby
unless 'abc'.include? grau
  puts 'você está de recuperação'
end
```

### Modificador de Sentenca

```ruby
puts 'você está de recuperação' unless 'abc'.include? grau
```

---
# Estruturas de Controle

### Condicional `case`

```ruby
print "Enter your grade: "
grade = gets.chomp
case grade
  when "A"
    puts 'Well done!'
  when "B"
    puts 'Try harder!'
  when "C", "D"
    puts 'You need help!!!'
    puts "You just making it up!"
  else
    puts "You just making it up!"
end
```
---
# Estruturas de Controle

Nas estruturas de controle que serão vistas a seguir, em todas existe a possibilidade de quebrar o fluxo do bloco a ser executado. `break` interrompe o fluxo para fora do bloco, `next` pula para a próxima iteração e `redo` para reiniciar o loop.

## Loop `while`

```ruby
weight = num_pallets = 0
while weight < 100 and num_pallets <= 30
  weight += rand(10)

  # Sai do loop se o peso for um múltiplo de 5
  break if (weight % 5 == 0)

  num_pallets += 1
end

puts weight, num_pallets
```

#### Modificador de Sentenca

```ruby
square = square*square  while square < 1000
```

---
# Estrutura de Controle

## Loop `for`

```ruby
for i in 0..5
  puts "Value is #{i}"
end
```

Apesar de existir o loop `for`, em Ruby é comum fazer iteração através do método `each` do objeto. Veremos mais a frente.

```ruby
(0..5).each do |i|
  puts "Value is #{i}"
end
```

---
# Estrutura de Controle

## Loop `until`

```ruby
until weight >= 100 ||numPallets > 30
  pallet = nextPallet()
  weight += pallet.weight
  numPallets += 1
end
```

### Modificador de Sentenca

```ruby
square = square*square  until square >= 1000
```

---
# Bloco de código

O bloco de código é um trecho de código que será passado para um método, a ser usado internamente pela mesmo.

## Para blocos de uma única linha, deve-se usar as `{chaves}`

```ruby
metodo { puts "estou dentro do metodo" }
```

## Para blocos com mais de uma linha, usa-se o com os delimitadores `do` e `end`

```ruby
metodo do
  puts "estou dentro do metodo"
end
```

\* Existe a possibilidade de receber parâmetros para seu bloco, no caso, basta envolver entre `|`

```ruby
metodo {|valor| puts "#{valor} dentro do metodo" }
```

---
#  Métodos de um Enumerable

```ruby
all?, any?, collect, detect, each_cons, each_slice, each_with_index, entries,
enum_cons, enum_slice, enum_with_index, find, find_all, grep, include?, inject,
map, max, member?, min, partition, reject, select, sort, sort_by, to_a,
to_set, zip
```

---
# Exemplos com Enumeraveis

```ruby
names = %w{ Frye Leela Zoidberg }
names.find {|name|  name.length > 4 }     # => "Leela"
names.find_all { |name| name.length > 4}  # => ["Leela", "Zoidberg"]
names.grep /oidberg/                      # => ["Zoidberg"]
names.group_by {|name|  name.length}      # =>  {4=>["Frye"], 5=>["Leela"], 8=>["Zoidberg"]}
```

---
# Mais exemplos com Enumeraveis

```ruby
names = %w{ Frye Leela Zoidberg }
names.map {|name| name.downcase} # => ["frye", "leela", "zoidberg"]
names.reduce {|acc, name| name.length <= 5 ? acc + name : acc } # => "FryeLeela"
names.join ", " # => "Frye, Leela, Zoidberg"
```

---
# Invocando blocos

```ruby
def proxy_method
  puts "Calling command at: #{Time.new}"
  yield
end

proxy_method { puts "hello world proxified! "}

def proxy_method
   yield(Time.new)
end

proxy_method {|time| puts "hello world proxified  at #{time}"}
```

---
# Invocando blocos II

```ruby
def proxy_method(&method)
  # argumento com & precisa ser o ultimo da lista
  puts "Calling command at: #{Time.new}"
  method.call
end

proxy_method { puts "hello world proxified! "}

# ou com paremtros
def proxy_method (&method)
   method.call(Time.new)
end
proxy_method {|time| puts "hello world proxified  at #{time}"}
```

---
# Proc x Lambda

```ruby
fx = Proc.new {|x| x**2}
fxy = proc {|x,y| x+y}
# calling
fx.call(2) # => 4
fxy[2,3,4] #=> 5
fx = lambda {|x| x**2}
fxy = lambda {|x,y| x+y}
# calling
fx.call(2) # => 4
fxy.call(2,3,4) #=> exception na cara!
Proc.new e proc sao equivalentes
```

---
# Lambda “Calculus”

```ruby
def d(f)
  lambda do |a|
    h = 0.0000000001 # um valor pequeno para h
    h = h * a  if a < 1 && 0 < a
    (f[a+h]-f[a])/h
  end
end
f = lambda {|x| x**2}
puts d(f)[4]
```

---
# Objetos em Ruby

```ruby
class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end

  def to_s
    "ISBN:#{@isbn}, price: #{@price}"
  end
end

stock = BookInStock.new(1234, 10.39)
puts stock.to_s
```

---
# Atributos de instância - forma tradicional

```ruby
class BookInStock
  def isbn
    @isbn
  end

  def isbn=(value)
    @isbn = value
  end

  def price
    @price
  end
end
```

---
# Atributos de instância - forma declarativa

```ruby
class BookInStock
  attr_accessor :isbn
  attr_reader :price
end
```

---
# Herança

## Exemplo de Heranca

```ruby
class SpecialStock < BookInStock
end
```

---
# Herança - Singleton Pattern

## forma tradicional

```ruby
class Logger
  private_class_method :new
  @@logger = nil
  def Logger.create
    @@logger = new unless @@logger
    @@logger
  end
end
```

---
## módulo Singleton

```ruby
require 'singleton'
class Logger
  include Singleton

  def initialize
    @log = File.open("log.txt", "a")
  end
  def log(msg)
    @log.puts(msg)
  end
end

Logger.instance.log('message 2')
```

---
# Eigenclass

```ruby
stock =  BookInStock.new
class << stock
  def alter_price
    price * 1.4
  end
end
```

---
# Criando um Enumerable (I)

\* Basta implementar o metodo `each`.

```ruby
class Node
  include Enumerable
  attr_accessor :next, :previous, :v

  def initialize(v = {})
    @v = v
  end

  def to_s
    v.to_s
  end
end
```

---
# Criando um Enumerable (II)

class Node
  # continuação
  def <<(node)
    node.next = self.next
    node.previous = self
    self.next.previous = node unless self.next.nil?
    self.next = node
  end

  def remove
    node = self.previous
    node.next = self.next
    self.next.previous = node
    self
  end
end
```

---
# Criando um Enumerable (III)

```ruby
  class Node
    # continuação
    def each
      node = self.next
      until node == self || node.nil?
      yield node
      node = node.next
    end
  end
end
```

---
# Mais sobre metodos

Lista de parâmetros:

```ruby
def my_new_method               # No arguments
  # Code for the method would go here
end

def my_other_new_method(arg1, arg2, arg3)  # 3 arguments
  # Code for the method would go here
end

def cool_dude(arg1="Miles", arg2="Coltrane", arg3="Roach")  # defaults
  "#{arg1}, #{arg2}, #{arg3}."
end
```

---
# Truques com parâmetros

Aridade não definida

```ruby
def varargs(arg1, *rest)
  "Got #{arg1} and #{rest.join(', ')}"
end

varargs("one")  # "Got one and "
varargs("one", "two") # "Got one and two"
varargs "one", "two", "three" # "Got one and two, three”

def varargs(arg1, hash)
 puts “#{arg1} - #{hash}”
end

varargs (1, :a => 1)
```

---
# Array para argumentos

Expandindo array para parâmetros

```ruby
def five(a, b, c, d, e)
  "I was passed #{a} #{b} #{c} #{d} #{e}"
end

five(1, 2, 3, 4, 5 )         #  "I was passed 1 2 3 4 5"
five(1, 2, 3, *['a', 'b'])  # "I was passed 1 2 3 a b"
five(*(10..14).to_a)         #  "I was passed 10 11 12 13 14"
```

---
# Proc para bloco

Convertendo proc para bloco

```ruby
print "(t)imes or (p)lus: "
times = gets.chomp
print "number: "
number = gets.to_i

if times =~ /^t/
  calc = proc { |n| n*number }
else
  calc = proc { |n| n+number }
end

puts((1..10).collect(&calc).join(", "))
```

---
# Exceptions, Catch and Throw

```ruby
opFile = File.open(opName, "w")

while data = socket.read(512)
  opFile.write(data)
end
```

---
# Exceptions

```ruby
opFile = File.open(opName, "w")
begin
  # Exceptions raised by this code will
  # be caught by the following rescue clause
  while data = socket.read(512)
    opFile.write(data)
  end

rescue SystemCallError
  $stderr.print "IO failed: " + $!
  opFile.close
  File.delete(opName)
  raise
end
```ruby

---
# Catching exception

Nomeando a exceção

```ruby
begin
  eval string
rescue SyntaxError, NameError => boom
  # OLHA! sem usar o $!
  print "String doesn't compile: " + boom
rescue StandardError => bang
  print "Error running script: " + bang
end
```

---
# Ensure

Garante que um bloco é chamado

```ruby
f = File.open("testfile")
begin
  # .. process
rescue
  # .. handle error
ensure
  f.close unless f.nil?
end
```

---
# Rescuing a Method

Begin Rescue

```ruby
def some_method
  begin
    danger_danger
    true # good return
  rescue Error
    false # error return
  end
end
```

Better code

```ruby
def some_method
  danger_danger
  true # good response
rescue Error
  false # error response
end
```

---
# Raise Exceptions

Formas típicas de se lançar uma exceção

```ruby
# sem conversa
raise

# adicionando uma string…
raise "Missing name" if name.nil?

if i >= myNames.size
  raise IndexError, "#{i} >= size (#{myNames.size})"
end

# passando o stackTrace via Kernel::caller
raise ArgumentError, "Name too big", caller
```

---
# Especializando Exceções

Declaração

```ruby
class RetryException < RuntimeError
  attr :okToRetry

  def initialize(okToRetry)
    @okToRetry = okToRetry
  end
end
```

Como lançar

```ruby
def readData(socket)
  data = socket.read(512)
  if data.nil?
    raise RetryException.new(true), "transient read error"
  end
  # .. normal processing
end
```

---
# Especializando Exceções II

Tratanto a exceção

```ruby
begin
  stuff = readData(socket)
  # .. process stuff
rescue RetryException => detail
  retry if detail.okToRetry
  raise
end
```

---
# Catch e Throw

Desvio incondicional com labels

```ruby
def promptAndGet(prompt)
  print prompt
  res = readline.chomp
  throw :quitRequested if res == "!"
  return res
end

catch :quitRequested do
  name = promptAndGet("Name: ")
  age  = promptAndGet("Age:  ")
  sex  = promptAndGet("Sex:  ")
  # ..
  # process information
end
```

---
# Módulos
Uso

```ruby
### Criar namespace (evitar conflito de nomes)
### Mixin (permitir herança de traços – como se fosse uma cópia do conteúdo do módulo no local incluído)
```

---
# Módulos II

## Declaração

```ruby
module Trig
  PI = 3.141592654
  def Trig.sin(x)
   # ..
  end
  def Trig.cos(x)
   # ..
  end
end
```

## Uso

```ruby
require "./trig"
puts Trig.sin(Trig::PI / 3.0)
```

---
# Mixins

Applying mixin

```ruby
# BigInteger estende Number
class BigInteger < Number

  # Adiciona métodos de instância de Stringify
  include Stringify

  # Adiciona métodos de classe de Math
  extend Math

  # Adiciona um constructor com um parâmetro
  def initialize(value)
    @value = value
  end
end
```

---
# Mixins II
Applying mixin

```ruby
# Cria um novo objeto
bigint1 = BigInteger.new(10)

# Chama um método herdado da classe base
puts bigint1.intValue   # --> 10

# Chama um método de classe estendido de Math
bigint2 = BigInteger.add(-2, 4)
puts bigint2.intValue   # --> 2

# Chama um método incluído de Stringify
puts bigint2.stringify   # --> 'Two'

# Adiciona os métodos de módulo para a instância desse objeto somente
bigint2.extend CurrencyFormatter
```

---
# ERB

- Sistema de Template padrão do Ruby
- Uma classe como outra qualquer
- Via linha de comando é possível parsear um arquivo erb

---
# Dojos

## Escrever um programa em Ruby que:

- 1 - Calcule os valores da sequência abaixo
- 2 - Calcule os valores que maximizam o tamanho da sequência
