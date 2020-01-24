class Address < ApplicationRecord
    belongs_to :farmer
    #validates :line_1, :line_2, :city, :pincode, presence: true
    #validates :pincode, length: { is: 6}

    def full_address
        self.line_1 +" "+self.line_2+" "+self.city+" "+" "+self.state+" "+self.country+" "+self.pincode
    end        
end
