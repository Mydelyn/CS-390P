class Section < ActiveRecord::Base
	belongs_to :course
  # foreign key - course_id
  has_many :enrollments
  has_many :students, through: :enrollments

end