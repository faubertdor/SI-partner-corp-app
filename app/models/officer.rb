class Officer < ActiveRecord::Base
  belongs_to :user
  validates :full_legal_name, :title, presence: true
end
