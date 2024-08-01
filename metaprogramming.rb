class Account
    attr_accessor :name, :address, :email, :notes

    def assign_values values
        values.each_key do |k|
            self.send("#{k}=", values[k])
        end
    end
end

user_info = {
    name: "Josh",
    address: "1590 Random Drive",
    email: "random@random.com",
    notes: "please help me"
}

account = Account.new
account.assign_values(user_info)

puts account.inspect
