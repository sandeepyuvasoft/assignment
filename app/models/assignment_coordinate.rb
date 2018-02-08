class AssignmentCoordinate < ApplicationRecord
	belongs_to :user
	belongs_to :assignment
	accepts_nested_attributes_for :assignments
end
