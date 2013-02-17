module Methodize
  
  def method_missing(m, *args)
    
  end
end

hash = { :a => 1, :b => 2, :c => 3}
hash.extend(Methodize)
hash.a # a[:a] ... mensagem recebida :a
hash.a = 1     # a[:a]=1... mensagem recebida :a=, 1

