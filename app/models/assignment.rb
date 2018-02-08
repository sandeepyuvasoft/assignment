class Assignment < ApplicationRecord
	has_many :registers
  has_many :users, through: :register
end
