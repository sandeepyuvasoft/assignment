class Assignment < ApplicationRecord
	serialize(:student_ids, Array)
	serialize(:teacher_ids, Array)
	belongs_to :user
end
