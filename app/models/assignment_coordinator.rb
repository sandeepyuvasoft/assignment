class AssignmentCoordinator < ApplicationRecord
  belongs_to :user
  belongs_to :assignment
  self.inheritance_column = nil

end
