class FarmerInstrumentsController < ApplicationController
    def index
        @ads = FarmerInstrument.all.includes(:farmer, :instrument) #eager loading (include)
    end

    def show
        @add = Address.where(id: params[:id]).first
        @name = Farmer.where(id: params[:id]).first
        #@details = FarmerInstrument.where
        @details = FarmerInstrument.where(id: params[:id]).first
        @owned = FarmerInstrument.where(id: params[:id]).count
        @borrowed = Rent.where(farmer_id: params[:id]).count
        #@farmer_address = Address.where(id: params[:id])
    end

    def new
        @farmer_list = Farmer.all.collect{ |u| [u.first_name,u.id]}
        @instrument_list = Instrument.all.collect{ |u| [u.name,u.id]}

    end

    def edit
        @edit = FarmerInstrument.find(params[:id])
        #@edit_ad = FarmerInstrument.da
    end

    def update
        @update_details = FarmerInstrument.find(params[:id])
        @update_details.update(permit_params)
        #@update_details.update!(rent_per_hour: params[:rent_per_hour].to_i, deposit: params[:deposit].to_i,available_from: params[:available_from],available_to: params[:available_to])
        redirect_to farmer_instruments_path

    end

    def create
        #byebug
        #@article = FarmerInstrument.new(params[:farmer_id,:instrument_id,:rent_per_hour,:deposit])
        @new_ad = FarmerInstrument.create(permit_params)
        #@article.save
        #redirect_to @article
        redirect_to farmer_instruments_path
        #redirect_to 
        #render 
    end

    def rent_count
        @name = Farmer.all
        @borrowed_count = Rent.all
        @owned = FarmerInstrument.all
    end

    private

    def permit_params
        params.required(:farmer_instrument).permit(:farmer_id,:instrument_id,:available_from,:available_to,:rent_per_hour,:deposit)
        #params.require(:farmer_instrument).permit(:farmer_id,:instrument_id,:available_from,:available_to,:rent_per_hour,:deposit)
    end

    def permit_param1
        #params.required(:farmer_instruments).permit(:farmer_id,:instrument_id,:available_from,:available_to,:rent_per_hour,:deposit)
        params.require(:farmer_instrument).permit(:farmer_id,:instrument_id,:available_from,:available_to,:rent_per_hour,:deposit)
    end

end
