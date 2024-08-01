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
puts account