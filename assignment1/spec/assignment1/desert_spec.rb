require 'spec_helper'

module Assignment1
  describe "Dessert" do
    it "takes a name and calorie count in the constructor" do
      d = Dessert.new("pie",300)
      d.kind_of?(Dessert).should == true
    end
    it "should have an accessor for name" do
      d = Dessert.new("pie", 300)
      d.name.should == "pie"
      d.name = "apple"
      d.name.should == "apple"
    end
    it "should have an accessor for calories" do
      d = Dessert.new("pie",300)
      d.calories.should == 300
      d.calories = 200
      d.calories.should == 200
    end
    it "should have a method healthy?" do
      Dessert.instance_methods.include?(:healthy?).should == true
    end
    it "should have a method delicious?" do
      Dessert.instance_methods.include?(:delicious?).should == true
    end
    it "should return true for healthy if calories < 200" do
      p = Dessert.new("pie",300)
      p.healthy?.should == false
      p.calories = 150
      p.healthy?.should == true
    end
    it "should return true for all desserts" do
      p = Dessert.new "pie", 300
      p.delicious?.should == true
    end
  end
end
