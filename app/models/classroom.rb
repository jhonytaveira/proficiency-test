class Classroom < ActiveRecord::Base
  attr_accessible :course_id, :student_id, :entry_at

  validates :course_id, :student_id, :entry_at, presence: true
  validates :course_id, :student_id, uniqueness: true

  belongs_to :course
  belongs_to :student

  orderize
end
