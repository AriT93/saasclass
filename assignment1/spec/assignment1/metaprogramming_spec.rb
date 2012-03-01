require 'spec_helper'

module Assignment1
  describe "attr_accessor_with_history" do
    it "should track history or the bar attr" do
      f = Foo.new
      f.bar = "a"
      f.bar_history[0].should == nil
      f.bar = 1
      f.bar_history.should == [nil,"a",1]
    end
  end
end
