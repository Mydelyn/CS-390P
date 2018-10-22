class Course < ActiveRecord::Base
	has_many :sections

	validates :name, :department, :number, :credithours, presence: true

	validates :number, numericality: {greater_than_or_equal_to: 1, :less_than_or_equal_to => 6}
	validates :credithours, numericality: {greater_than_or_equal_to: 1, :less_than_or_equal_to => 5}
end
