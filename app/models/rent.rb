class Rent < ApplicationRecord
    belongs_to :farmer
    belongs_to :farmer_instrument
    validates :from_start, :to_end, presence: true
end
