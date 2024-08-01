class String
  # def self.add_new_method name
  #   send(:define_method, name) {
  #     puts "You created a method named #{name} and you are in it right now"
  #   }
  # end

  def self.add_new_method(name, &logic)
    send(:define_method, name) {|*args|
      puts "You created a method name #{name}, and you are in it right now"
      logic.call(*args)
    }
  end
end

# String.add_new_method("Josh")
# String.send(:define_method, "full_name"){
#   puts "Josh Gumerove"
# }

# "Gumerove".Josh
# "Gumerove".full_name

my_string = String.new

String.add_new_method("add_numbers") do |x, y|
  puts "here is the logic"
  puts x + y
end

String.add_new_method("multiply_numbers") do |x, y, z|
  puts "multiplying numers"
  puts x * y * z
end

my_string.add_numbers(20, 40)
my_string.multiply_numbers(2, 4, 6)

def args_test(*args)
  context = {}
  args.each do |arg|
    context[arg] = "test"
  end
  puts context
end

args_test("First", "Second")