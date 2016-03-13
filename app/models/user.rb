class User < ActiveRecord::Base
  has_one  :general_info, dependent: :destroy
  has_one  :corporate_personnel, dependent: :destroy
  has_one  :fx_and_payment, dependent: :destroy
  has_many :politically_exposed_people, dependent: :destroy
  has_many :signatories, dependent: :destroy
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]
         
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email= auth.info.email
      user.password = Devise.friendly_token[0, 20]
    end
  end
end
