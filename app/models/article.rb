class Article < ApplicationRecord
	has_many :likes, :as => :likeable
	has_many :comments, dependent: :destroy
	validates :title, presence: true,
						length: { minimum: 5 }
end
