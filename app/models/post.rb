class Post < ApplicationRecord
	has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200" }
	validates :image, :attachment_presence => true
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/tif"]
	#do_not_validate_attachment_file_type :image
end
