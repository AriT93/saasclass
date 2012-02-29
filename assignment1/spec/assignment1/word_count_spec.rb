require 'spec_helper'

module Assignment1
  describe "#count_words" do
    it "should correctly count up doo bee doo bee doo" do
      testval = count_words("doo bee doo bee doo")
      testval["doo"].should == 3
    end
    it "should correctly count the palindrome_spec.rb" do
      compval = { 'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1}
      testval = count_words("A man, a plan, a canal -- Panama").should == compval
    end
  end
end
