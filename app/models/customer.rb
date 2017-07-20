class Customer < ApplicationRecord
	has_many :orders, through: :customerorders
	has_many :customer_orders
end
