class Model
  @@all_fields = []

  def self.field(name)
    @@all_fields << name
    attr_accessor name
  end

  def initialize
    @fields = @@all_fields
  end
end


class Account < Model 
  field :balance
  field :address
  field :name
end

account_1 = Account.new
account_1.balance = 1_000
account_1.address = "1040 Random Walk"
account_1.name = "Roth IRA"

puts account_1.inspect
