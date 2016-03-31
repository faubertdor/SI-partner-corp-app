class AuthorizedRepresentative < ActiveRecord::Base
  belongs_to :user
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates :email, presence: true
  validates :full_legal_name, :title, :dob, :street_address, :city, :state,
            :country, :zip_code, presence: true
end
