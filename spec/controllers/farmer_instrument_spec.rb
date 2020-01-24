require 'rails_helper'

RSpec.describe FarmerInstrumentsController, type: :controller do

    before(:all) do
        #@farmer1 = create(:farmer_instrument)
        @farmer = create(:farmer)
        @instrument = create(:instrument) 

    end

    it 'should render index action' do
        #@farmerintrument = FarmerInstrument.create(farmer_id: 1,instrument_id: 1,rent_per_hour: 1000,deposit: 500)
        
        get :index
        expect(response).to have_http_status(200) 
        #expect(response).to render_template("index")

    end

    it 'should render new action' do

        get :new
        expect(response).to have_http_status(200)
    end

    it 'should render show action' do

        get :show, params: { id: 100 }
        expect(response).to render_template('show')
        #expect(response).to have_http_status(500)

    end

    it 'should render create action' do
        #@farmer = create(:farmer)
        #@instrument = create(:instrument)
        post :create , params: {farmer_id: @farmer.id, instrument_id: @instrument.id, available_from: "18-02-2020", available_to: "26-02-2020", rent_per_hour: 10000, deposit: 5000 }
        expect(response).to render_template('create')
    end

end