# outro exemplo de criação de hash
(1..100).reduce({}) {|acc, i| acc.merge(i => i.to_s.length)}