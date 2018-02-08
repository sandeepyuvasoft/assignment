class Assignment < ApplicationRecord
	has_many :assignment_coordinates
  has_many :users, through: :assignment_coordinates
end
