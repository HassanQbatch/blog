class Book < ApplicationRecord
	enum availability: [:available, :unavailable]
end
