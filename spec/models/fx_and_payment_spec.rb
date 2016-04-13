require 'rails_helper'

RSpec.describe FxAndPayment, type: :model do
	before(:all) do 
		@fx = FxAndPayment.new
	end

	it "should not be valid when empty" do
		expect(@fx.valid?).to be_falsey
	end
end
