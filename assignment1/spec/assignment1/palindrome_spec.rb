require 'spec_helper'

module Assignment1
  describe "#palindrome?" do
    it "should recoginze A man, a plan a canal -- Panama" do
      palindrome?("A man, a plan, a canal -- Panama").should == true
    end
    it "should recognize Madam, I'm Adam!" do
      palindrome?("Madam, I'm Adam!").should == true
    end
    it "should return false on Abracadabra" do
      palindrome?("Abracadabra").should == false
    end
    it "should pass the test case " do
      palindrome?("Do geese see God?").should == true
    end
    it "should pass the new test case" do
      palindrome?("Murder for a jar of red rum.").should == true
    end
  end
end
