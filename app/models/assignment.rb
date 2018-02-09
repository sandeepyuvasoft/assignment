class Assignment < ApplicationRecord
	has_many :assignment_coordinates
  has_many :users, through: :assignment_coordinates
  belongs_to :assignment
  accepts_nested_attributes_for :assignment, :allow_destroy => true

end
