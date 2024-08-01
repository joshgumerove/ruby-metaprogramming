class Account
    attr_accessor :name, :address, :email, :notes
end

user_info = {
    name: "Josh",
    address: "1590 Random Drive",
    email: "random@random.com",
    notes: "please help me"
}

account = Account.new

account.name = user_info[:name]
account.address = user_info[:address]
account.email = user_info[:email]
account.notes = user_info[:notes]

puts account.inspect