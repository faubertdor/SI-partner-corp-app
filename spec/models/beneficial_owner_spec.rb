require 'rails_helper'

RSpec.describe BeneficialOwner, type: :model do
	before(:all) do 
		@b_owner = BeneficialOwner.new
	end

	it "should not be valid when empty" do
		expect(@b_owner.valid?).to be_falsey
	end
end
