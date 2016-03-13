class CorporatePersonnel < ActiveRecord::Base
  belongs_to :user
  has_many :authorized_representatives, dependent: :destroy
  has_many :beneficial_owners, dependent: :destroy
  has_many :directors, dependent: :destroy
  has_many :officers, dependent: :destroy
end
