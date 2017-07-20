class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :gender
      t.string :email
      t.string :password
      t.date   :joining_date

      t.timestamps
    end
  end
end
