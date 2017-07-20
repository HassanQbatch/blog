class DropEmployee < ActiveRecord::Migration[5.1]
  def change
  	drop_table :employees
  	drop_table :employers
  end
end
