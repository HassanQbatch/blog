class Customer < ApplicationRecord
	has_many :orders, through: :customerorders
	has_many :customerorders
end
