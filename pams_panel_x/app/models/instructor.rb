class Instructor < ApplicationRecord
	validates :first_name, :last_name, :age, :salary, :highest_completed_education, presence: true
	validates :salary, numericality: { :greater_than => 0}
	validates :age, numericality: { :less_than => 150}

end
