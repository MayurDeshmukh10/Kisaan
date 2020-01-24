class RentDetailsController < ApplicationController
    def index

        @farmers = Farmer.all
        @FI = FarmerInstrument.all
        @rent = Rent.all
    
    end
end

