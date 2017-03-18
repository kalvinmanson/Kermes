class Product < ApplicationRecord
  belongs_to 	:user
  has_many		:paymments
  has_many		:qualifications

  has_attached_file :photo, styles: { medium: "500x500>", thumb: "150x150>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
end
