class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name, null: false
      t.string :description
      t.integer :status
      t.timestamps
    end
  end
end
