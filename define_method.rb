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

class Model
  @@all_fields = []

  def self.field(name)
    @@all_fields << name
    send(:define_method, name) do 
      @values[name]
    end

    send(:define_method, "#{name}=") do |value|
      @values[name] = value
    end
  end

  def initialize
    @fields = @@all_fields
    @values =  {}
  end
end

class Account < Model
  field :balance
  field :address
  field :name
end

test_account = Account.new

test_account.balance = 1_000
test_account.address= "1200 Somewhere Road"
test_account.name= "Money Account"

puts test_account.inspect

puts test_account.balance


