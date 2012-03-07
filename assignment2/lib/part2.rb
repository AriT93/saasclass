class CartesianProduct
  include Enumerable
  attr_accessor :a, :b
  def initialize(a,b)
    @a = a
    @b = b
  end
  def to_a
    @a.product(@b)
  end
  def each
    retval = @a.product(@b)
    retval.each{ |elt| yield}
  end
end
