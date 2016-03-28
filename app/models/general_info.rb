class GeneralInfo < ActiveRecord::Base
  belongs_to :user
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates :cell_number, :landline_number, :fax_number, phony_plausible: true
end
