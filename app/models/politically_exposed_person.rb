class PoliticallyExposedPerson < ActiveRecord::Base
  belongs_to :user
  validates :name, :title, :position_held, :from, :to, presence: true
  validate :date_from_is_before_date_to

  private
  	def date_from_is_before_date_to
  		if from >= to
  			errors.add(:from, "date should be set to sometime before To date.")
  		end
  	end
end
