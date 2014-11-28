class Restaurant < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	has_many :reviews

	validates :name, :address, :phone, :website, :image, presence: true
	validates :phone, format: { with: /\A\(\d{2}\) \d{4} \d{4}\z/,
    message: "phone number must be in the following format (12) 1234 5678" }
  validates :website, format: { with: /\Ahttps?:\/\/.*\z/,
  	message: "must start with http:// or https://" }
	validates :address, format: { with: /\A\d+[^,]+ [A-Z]+ \d{4}\z/,
  	message: "must be in the format 123 Fake Street Melbourne VIC 3000" }
end
