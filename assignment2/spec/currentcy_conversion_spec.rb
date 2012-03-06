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
    describe "part1b" do
    it "should recoginze A man, a plan a canal -- Panama" do
      "A man, a plan, a canal -- Panama".palindrome?.should == true
    end
    it "should recognize Madam, I'm Adam!" do
      "Madam, I'm Adam!".palindrome?.should == true
    end
    it "should return false on Abracadabra" do
      "Abracadabra".palindrome?.should == false
    end
    it "should pass the test case " do
      "Do geese see God?".palindrome?.should == true
    end
    it "should pass the new test case" do
      "Murder for a jar of red rum.".palindrome?.should == true
    end
  end
end
