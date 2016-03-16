class User
  require 'faker'
  require 'json'

    def initialize # 0 args
      @name = Faker::Name.name # faker is a library designed to fake some shit
      @address = Faker::Address.street_address
      @email = Faker::Internet.email
    end

    def to_hash
      return {
        :name => @name,
        :address => @address,
        :email => @email
      }
    end
    def to_json
      self.to_hash._to_json
    end
    def to_s # your job to fix
      return '#{@name} has signed up. Their address is #{@address} and their email is #{@email}.'
    end
end
