class BeneficialOwner < ActiveRecord::Base
  belongs_to :user
  validates :full_legal_name, :citizenship, :street_address, :city, :state,
            :country, :zip_code, :ownership_percentage, presence: true
end
