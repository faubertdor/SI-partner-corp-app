require 'rails_helper'

RSpec.describe Officer, type: :model do
	before(:all) do 
  		@officer = Officer.new
 	end

  	it "should be valid when empty" do
  		expect(@officer.valid?).to be_falsey
  	end
end
