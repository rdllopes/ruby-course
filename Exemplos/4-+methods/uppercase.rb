class Symbol

    # A generalized conversion of a method name
    # to a proc that runs this method.
    #
    def to_proc
        lambda {|x, *args| x.send(self, *args)}
    end

end

# Voila !
words = %w(Jane, aara, multiko)
upcase_words = words.map(&:upcase)
puts upcase_words