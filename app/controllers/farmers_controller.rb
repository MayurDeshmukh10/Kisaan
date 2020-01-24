class FarmersController < ApplicationController

    def index
        @farmer_details = Farmer.all

    end

    def edit
        @farmer_edit = Farmer.find(params[:id])
        #@edit_ad = FarmerInstrument.da
    end

    def update
        @update_details = Farmer.find(params[:id])
        #@update_details.update!(first_name: params[:first_name], last_name: params[:last_name], mobile_number: params[:mobile_number],email: params[:email]  )
        @update_details.update!(permit_params)
        redirect_to farmer_path()

    end

    def show
        @details = Farmer.where(id: params[:id]).first
        
        
    end

    def new

    end

    def create
        #byebug
        #@article = FarmerInstrument.new(params[:farmer_id,:instrument_id,:rent_per_hour,:deposit])
        @new_ad = Farmer.create(permit_params)
        #@article.save
        #redirect_to @article
        redirect_to farmers_path()
        #redirect_to 
        #render 
    end


    private

    def permit_params
        params.required(:farmers).permit(:first_name,:last_name,:mobile_number,:email)

    end

    
end
