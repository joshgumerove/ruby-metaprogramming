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


class Car
    def assign_values values
        values.each do |k, v|
            self.class.attr_accessor k
            self.send("#{k}=", v)
        end
    end
end

car = Car.new
puts car.inspect

bmw = {
    year: 2015,
    brand: "BMW",
    price: 20_000,
    model: "XRV"
}

car.assign_values bmw

puts car.inspect
