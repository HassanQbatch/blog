class Order < ApplicationRecord
	has_many :customers, through: :customerorders
	has_many :customer_orders
end
