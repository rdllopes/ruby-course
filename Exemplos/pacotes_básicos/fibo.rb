#fibonacci com memoization

require 'simple_memoize' # https://github.com/tokland/simple_memoize

module Math
  def self.fibs(n)
    n < 2 ? 1 : fibs(n - 1) + fibs(n - 2)
  end
  class << self    
    memoize :fibs
  end
end
