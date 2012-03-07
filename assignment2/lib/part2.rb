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
    @a.product(@b).collect{ |elt| yield elt}
  end
end
