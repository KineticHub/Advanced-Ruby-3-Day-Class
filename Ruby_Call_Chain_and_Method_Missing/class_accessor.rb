module ClassAccessor
  def class_attr_accessor (*symbols)
    symbols.each do |symbol|
      puts self
      define_singleton_method ("#{symbol}") do
        class_variable_get("@@#{symbol}")
      end
      define_singleton_method ("#{symbol}=") do |arg|
        class_variable_set("@@#{symbol}".to_sym, arg)
      end
    end
  end
end

class Test
  extend ClassAccessor
  class_attr_accessor :test, :test2
  @@test = 0
  @@test2 = 1
end