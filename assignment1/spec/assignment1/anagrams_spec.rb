require 'spec_helper'

module Assignment1
  describe "#combine_anagrams" do
    it "should grade the example correctly" do
      input = ['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream']
      testar = combine_anagrams(input)
      testar.include?(["cars", "racs", "scar"]).should == true
      testar.include?(["four"]).should == true
      testar.include?( ["for"]).should == true
      testar.include?( ["potatoes"]).should == true
      testar.include?(["creams", "scream"]).should == true
    end
  end
end
