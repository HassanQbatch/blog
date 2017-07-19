class CreateCustomerOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :customer_orders do |t|
      t.belongs_to :customer, index: true
      t.belongs_to :order, index: true
      
      t.timestamps
    end
  end
end
