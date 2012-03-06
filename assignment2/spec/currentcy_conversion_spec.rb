require 'spec_helper'

module Currency_Conversion
  describe "part1a" do
    it " should convert dollars to rupees" do
      1.dollar.in(:rupees).should == (1 * 0.019)
      10.dollars.in(:rupees).should == (10 * 0.019)
    end
    it "should convert rupees to yen" do
      5.rupees.in(:yen).between?(7.2, 7.4)
    end
  end
end
