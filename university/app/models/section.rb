class Section < ActiveRecord::Base
	belongs_to :course
  # foreign key - course_id
end