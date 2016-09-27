class Play < ActiveRecord::Base
	belongs_to :user
	belongs_to :category

	  has_attached_file :play_img, styles: { medium: "250x350>", thumb: "325x475>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
