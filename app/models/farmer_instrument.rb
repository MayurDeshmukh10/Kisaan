class FarmerInstrument < ApplicationRecord
    belongs_to :farmer
    belongs_to :instrument 
    has_many :rents
    validates :rent_per_hour, :deposit, numericality: {only_integer: true}
    #validates :rent_per_hour, :is_available, :deposit, :available_from, :available_to, presence: true
end
