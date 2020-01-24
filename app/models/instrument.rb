class Instrument < ApplicationRecord
    has_many :farmer_instruments
    has_many :farmers, :through => :farmer_instruments
    validates :name, :brand, :specifications, presence: true
end
