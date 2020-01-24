class Farmer < ApplicationRecord
    has_one :address
    has_many :farmer_instruments
    has_many :instruments, :through => :farmer_instruments
    has_many :rents
    validates :mobile_number, numericality: {only_integer: true,}
    validates :mobile_number, length: {is: 10}
    validates :first_name, :last_name, :mobile_number, :email ,presence: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 



    def full_name
        self.first_name + " " + self.last_name
    end
end
