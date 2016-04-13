require 'rails_helper'

RSpec.describe PoliticallyExposedPerson, type: :model do
	before(:all) do
		@politically_exp = PoliticallyExposedPerson.new
		@politically_exp.to = Date.today
		@politically_exp.from = Date.today
	end

	it "should not be valid when empty" do
		expect(@politically_exp.valid?).to be_falsey
	end
end
