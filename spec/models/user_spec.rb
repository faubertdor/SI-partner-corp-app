require 'rails_helper'

RSpec.describe User, type: :model do
	before(:all) do
		@user = User.new
	end

	it "should not be valid when empty" do 
		expect(@user.valid?).to be_falsey
	end
end
