class CreateEmps < ActiveRecord::Migration[5.1]
  def change
    create_table :emps do |t|
      t.string :name
      t.references :manager, index:true
      t.timestamps
    end
  end
end
