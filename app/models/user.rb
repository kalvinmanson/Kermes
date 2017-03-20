class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many		:products
  has_many		:paymments
  has_many		:qualifications

  has_attached_file :avatar, styles: { medium: "500x500>", thumb: "150x150>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

	geocoded_by :address1			   # can also be an IP address
	after_validation :geocode          # auto-fetch coordinates

end
