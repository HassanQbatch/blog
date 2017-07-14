class Like < ApplicationRecord
	belongs_to :likeable, :polymorphic => true

	scope :liked, -> { where("likeable_id > 1") }
end
