class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.integer :student_id, null: false
      t.integer :course_id, null: false
      t.datetime :entry_at
      t.timestamps
    end
    add_foreign_key :classrooms, :student_id, :students
    add_foreign_key :classrooms, :course_id, :courses
  end
end
