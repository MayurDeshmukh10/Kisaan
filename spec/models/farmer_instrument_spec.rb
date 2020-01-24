require 'rails_helper'

RSpec.describe FarmerInstrument, type: :model do

    before(:all) do
        #@farmer1 = create(:farmer_instrument)
        @farmer = create(:farmer)
        @instrument = create(:instrument) 

    end

    it "is valid with valid attributes" do
 
        farmerinstrument = build(:farmer_instrument, farmer_id: @farmer.id, instrument_id: @instrument.id)
        expect(farmerinstrument).to be_valid

    end

end