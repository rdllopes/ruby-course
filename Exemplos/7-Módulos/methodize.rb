module Methodize

  def method_missing(name, *args, &block)
    method_name = name.to_s    
    if method_name[-1,1] == '='
       method_name = method_name.chop
       self[__key(method_name)] = args[0]
    else
       self[__key(method_name)]
    end  
  end
  
  def __key(name)
    key?(name) ? name : name.to_sym
  end
end

teste = {
      :title  => "Article 3",
      :author => "Biff Tannen",
      :url    => ["http://yet.another.url.com", "http://localhost"],
      :info => {
        :published => "2010-05-31",
        :category  => [:sports, :entertainment]
      }
    }
teste.extend(Methodize)
puts teste.title