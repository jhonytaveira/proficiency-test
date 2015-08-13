class Course < ActiveRecord::Base
  attr_accessible :name, :description, :status

  validates :name, :description, presence: true
  validates :name, uniqueness: true

  has_enumeration_for :status, with: Status

  orderize
end
