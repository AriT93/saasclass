class Numeric
  @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1}
  def method_missing(method_id,*arguments)
    singular_currency = method_id.to_s.gsub( /s$/, '')
    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
  end
  def in(currency)
    if self >= 1
      self.send(currency)
    else
      self / @@currencies[currency.to_s.gsub(/s$/,'')]
    end
  end
end

class String
  def palindrome?
    self.upcase!.gsub!(/[\.\?!@#$&,*'-]? ?/,'').gsub!(/\b ?/,'').eql?(self.reverse)
  end
end
