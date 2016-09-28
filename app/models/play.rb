class Play < ActiveRecord::Base
	belongs_to :user
	belongs_to :category

  has_attached_file :play_img, :styles => { :play_index => "250x350>", thumb: "325x475>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :play_img, content_type: /\Aimage\/.*\z/
end
