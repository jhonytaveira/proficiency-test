class Student < ActiveRecord::Base
  attr_accessible :name, :register_number, :status

  validates :name, :register_number, presence: true
  validates :name, uniqueness: true

  has_enumeration_for :status, with: Status

  orderize
end
