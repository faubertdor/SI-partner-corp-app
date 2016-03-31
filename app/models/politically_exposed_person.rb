class PoliticallyExposedPerson < ActiveRecord::Base
  belongs_to :user
  validates :name, :title, :position_held, :from, :to, presence: true
end
