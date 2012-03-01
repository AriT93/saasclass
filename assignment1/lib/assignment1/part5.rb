class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s
    attr_reader attr_name
    attr_reader attr_name+"_history"
    class_eval %Q{
      def #{attr_name}= (val)
        if !@#{attr_name}_history
          @#{attr_name}_history = [nil]
        end
        @#{attr_name}_history.push val
        @#{attr_name} = val
      end
    }
  end
end

class Foo
  attr_accessor_with_history :bar
end
