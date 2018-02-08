class Assignment < ApplicationRecord
	has_many :assignment_coordinates
  has_many :users, through: :assignment_coordinates
  has_one :assignment, foreign_key: 'id'
  belongs_to :assignment, foreign_key: 'id'
  accepts_nested_attributes_for :assignment, reject_if: :all_blank
  accepts_nested_attributes_for :assignment_coordinates, reject_if: :all_blank, allow_destroy: true
end
