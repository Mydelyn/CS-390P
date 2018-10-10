class Section < ActiveRecord::Base
	belongs_to :course
  # foreign key - course_id
  has_many :enrollments
  has_many :students, through: :enrollments

  validates :semester, :number, :course, :roomnumber, presence: true

  validates :number, numericality: {greater_than_or_equal_to: 1, :less_than_or_equal_to => 6}
  validates :semester, inclusion: { in: %w(Fall Spring Summer fall spring summer),
  message: "%{value} is not a valid size. Please choose between Fall, Spring, or Summer semester." }
    end



  def numsem
    "#{course.name} #{number} #{semester}"
  end
