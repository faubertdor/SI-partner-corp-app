require 'rails_helper'

RSpec.describe GeneralInfo, type: :model do
	before(:all) do 
		@general_info = GeneralInfo.new
	end

	it "should be valid when empty" do
		expect(@general_info.valid?).to be_falsey
	end
end
