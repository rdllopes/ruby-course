Introducao: Ruby.new
====================

-   Linguagem para humanos

-   Compare:

        5.times { print "Ola!" }

        for (int i=0; i <10; i++) { printf("Ola!");}

---
Estruturas básicas
----------------------

-   Variáveis

        x, y, taxa_do_lixo2

-   Numeros

        1, -1.2, 6.03e-23    

-   String

        "alguma coisa assim"
        %q(veremos outras formas de declarar strings)

---
Estruturas basicas
----------------------

-   Symbols

        :x, :y, :isso_parece_uma_string

-   Constantes

        EmpireStateBuilding, NEA, PI

-   Objetos especiais

        true, false, nil

Símbolos são alocados uma única vez: :a.object\_id durante uma execução
sempre retornara o mesmo valor. Isso nao acontece com string. O método
equal? so devolve true se dois objetos são de fato o mesmo objeto (e
instâncias da mesma classe com valores iguais).

---
Metodos (mensagens)
-----------------------

    i = 1        
    texto = "um texto"; puts texto
    a = b = c = 0
    1 == 2           # sugar syntax!!!
    # metodo de classe
    1.methods  # lista todos os metodos daquele objeto
    1.send(:even?) # outra forma de enviar mensagens
    def fibo(n = 1)
        fibo(n-2) + fibo(n-1) if n >= 2
    end
    def self.log
      puts "metodo de classe"
    end

Lembre-se ... voce pode redefinir um método Quase tudo e objeto

---
Estruturas de Controle - if
-------------------------------

### Exemplo Completo

    if count > 10
      puts "Try again"
    elsif tries == 3
      puts "You lose"
      puts  Number:"
    end

### Exemplo Simples

    if radiation > 3000
      puts "Danger"
    end

### Modificador de Sentenca

    puts "Danger, Will Robinson" if radiation > 3000

---
Estruturas de Controle - case
---------------------------------

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
     end

---
Estruturas de Controle - while
----------------------------------

    while weight < 100 and numPallets <= 30
      pallet = nextPallet()
      weight += pallet.weight
      numPallets += 1
    end

### Modificador de Sentenca

    square = square*square  while square < 1000

---
Estrutura de Controle - for
-------------------------------

    for i in 0..5
       puts "Value is #{i}"
    end

---
Estrutura de Controle - until
---------------------------------

    until weight >= 100 ||numPallets > 30
      pallet = nextPallet()
      weight += pallet.weight
      numPallets += 1
    end

### Modificador de Sentenca

    square = square*square  until square >= 1000

---
Containers - Array
----------------------

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

---
Containers - Hash
---------------------

    h = {'dog' => 'canine', 'cat' => 'feline', 'donkey' => 'asinine'}
    h.length        #        3
    h['dog']        #        "canine"
    h['cow'] = 'bovine'
    h[12]    = 'dodecine'
    h['cat'] = 99
    h        # => {"cow"=>"bovine", "cat"=>99, 12=>"dodecine",
    "donkey"=>"asinine", "dog"=>"canine"}
      
    a = [[1, 'a'],[2, 'b'],[3, 'c'], [4, 'd']]
    b = Hash[a]
    # => {1=>"a", 2=>"b", 3=>"c", 4=>"d"}

---
Blocos e Iteradores
-----------------------

Passando blocos

    (1..12).each { |i| puts i}
    [1, 2, 4].each do |i|
        puts i
    end

Blocos de codigo

    (1..20).each{|x| puts x}

Influencia do Smalltalk:

    1 to: 20 do: [:x | x printN1]

---
 Métodos de um Enumerable
-----------------------------

    all?, any?, collect, detect, each_cons, each_slice, each_with_index, entries,
    enum_cons, enum_slice, enum_with_index, find, find_all, grep, include?, inject,
    map, max, member?, min, partition, reject, select, sort, sort_by, to_a,
    to_set, zip

---
Exemplos com Enumeraveis
----------------------------

    names = %w{ Frye Leela Zoidberg }
    names.find {|name|  name.length>4}          # => "Leela"
    names.find_all { |name| name.length > 4}
         #=> ["Leela", "Zoidberg"]
    names.grep /oidberg/
    # => ["Zoidberg"]
    names.group_by {|name|  name.length}
       # =>  {4=>["Frye"], 5=>["Leela"], 8=>["Zoidberg"]}

---
Mais exemplos com Enumeraveis
---------------------------------

    names = %w{ Frye Leela Zoidberg }
    names.map {|name| name.downcase}
    # => ["frye", "leela", "zoidberg"]
    names.reduce {|acc, name| name.length <= 5 ? acc + name : acc }
    # => "FryeLeela"
    names.join ", "
    # => "Frye, Leela, Zoidberg"

---
Invocando blocos
--------------------

    def proxy_method
      puts "Calling command at: #{Time.new}"
      yield
    proxy_method { puts "hello world proxified! "}
    #ou com paremtros
    def proxy_method
       yield(Time.new)
    proxy_method {|time| puts "hello world proxified  at #{time}"}

---
Invocando blocos II
-----------------------

    def proxy_method(&method)
      # argumento com & precisa ser o ultimo da lista
      puts "Calling command at: #{Time.new}"
      method.call
    proxy_method { puts "hello world proxified! "}
    #ou com paremtros
    def proxy_method (&method)
       method.call(Time.new)
    proxy_method {|time| puts "hello world proxified  at #{time}"}

---
Proc x Lambda
-----------------

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

---
Lambda “Calculus”
---------------------

    def d(f)
       lambda {|a|
         h = 0.0000000001 # um valor pequeno para h
         h = h * a       if a < 1 && 0 < a
         (f[a+h]-f[a])/h
       }
    f = lambda {|x| x**2}
    puts d(f)[4]

---
Objetos em Ruby
-------------------

    class BookInStock
      def initialize(isbn, price)
        @isbn = isbn
        @price = Float(price)
      end
     
      def to_s
        "ISBN:#{@isbn}, price: #{@price}"
      end
    end
    stock = BookInStock.new
    # ou
    stock = BookInStock.new (1234, 10.39)
    #invocando metodo
    puts stock.to_s

---
Variaveis e Escopo
----------------------

l | c | r

Variáveis Locais & `x name thx1138 _x _26`\
Variáveis de Instancia & `@name @X  @_ @plan9`\
Variáveis de Classe & `@@total @@N @@x_pos`\
Variáveis Globais & `$debug $CUSTOM $_ $plan9`\
Nomes de Classe & `String BigDecimal`\
Constants & `FEET_PER_MILE DEBUG`

---
Atributos de instância - forma tradicional
----------------------------------------------

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

---
Atributos de instância - forma declarativa
----------------------------------------------

    class BookInStock  
      attr_accessor :isbn
      attr_reader :price
     end

---
Herança
-----------

### Exemplo de Heranca

    class SpecialStock < BookInStock

---
Herança - Singleton Pattern
-------------------------------

### forma tradicional

    class Logger
      private_class_method :new
      @@logger = nil
      def Logger.create
        @@logger = new unless @@logger
        @@logger
      end
    end

### módulo Singleton

    require 'singleton'
    class Logger
      include Singleton
      
      def initialize
        @log = File.open("log.txt", "a")
      end
      def log(msg)
        @log.puts(msg)
      end
    Logger.instance.log('message 2')

    stock =  BookInStock.new
    class << stock
       def alter_price
             price * 1.4
       end

---
Criando um Enumerable (I)
-----------------------------

\* Basta implementar o metodo each.

    class Node
      include Enumerable 
      attr_accessor :next, :previous, :v
     def initialize(v = {})
        @v = v
      end
     def to_s
        v.to_s
      end

---
Criando um Enumerable (II)
------------------------------

    linked_list.rb (continuacao)
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

---
Criando um Enumerable (III)
-------------------------------

    def each
        node = self.next
        until node == self || node.nil?
          yield node
          node = node.next
        end
      end

---
Criando um Enumerable (II)
------------------------------

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
