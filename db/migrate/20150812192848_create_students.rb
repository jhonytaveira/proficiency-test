class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name, null: false
      t.string :register_number
      t.integer :status
      t.timestamps
    end
  end
end
