class Array
  def self.add_new_method(name, &logic)
    Array.send(:define_method, name) do |*args|
      logic.call(self, *args)
    end
  end
end


my_array = ["dog", "cat"]

Array.add_new_method("log_elements") do |me|
  me.each do |v|
    puts v
  end
end

Array.add_new_method("prepend_array") do |me, x|
  me.each {|e| puts "#{x} #{e}"}
end

my_array.log_elements
my_array.prepend_array("Josh: ")
 

