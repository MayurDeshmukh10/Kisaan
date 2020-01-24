require 'rails_helper'


RSpec.describe Farmer, type: :model do

        before(:all) do
            @farmer1 = create(:farmer)
        end

        it "is valid with valid attributes" do
            expect(@farmer1).to be_valid

        end
        
        it "has 10 digit mobile number" do
            farmer1 = build(:farmer, mobile_number: Faker::Number.number(digits: 10))
            expect(farmer1).to be_valid
        
        end

        it "has valid email id" do
            farmer2 = build(:farmer, email: Faker::Internet.email)
            expect(farmer2).to be_valid

        end




        #negative test cases
        '''it "has not a 10 digit mobile number" do
            farmer1 = build(:farmer, mobile_number: "84229")
            expect(farmer1).to be_valid
        
        end

        it "is not valid email id" do
            farmer2 = build(:farmer, email: "mayur.com")
            expect(farmer2).to be_valid

        end'''
    
end