require 'spec_helper'

module Part2
  describe CartesianProduct do
    it "returns the product of two arrays"do
      c = CartesianProduct.new([:a,:b,:c], [4,5])
      c.to_a.should include([:a,4])
    end
    it "should return an empty array if one array is empty" do
      c = CartesianProduct.new([:a,:b,:c],[])
      c.to_a.should == []
    end
  end
end
