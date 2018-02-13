class Assignment < ApplicationRecord
	belongs_to :user
	has_many :assignment_coordinators
  has_many :users, through: :assignment_coordinators
  has_many :comments, dependent: :destroy
end
