class Emp < ApplicationRecord
	has_many :subordinates, class_name: "Emp", foreign_key: "manager_id"

	belongs_to :manager, class_name: "Emp"
end
