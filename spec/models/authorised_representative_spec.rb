require 'rails_helper'

RSpec.describe AuthorizedRepresentative, type: :model do
	before(:all) do
		@auth_rep = AuthorizedRepresentative.new
	end

	it "should not be valid when empty" do
		expect(@auth_rep.valid?).to be_falsey
	end
end
