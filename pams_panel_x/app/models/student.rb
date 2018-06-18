class Student < ApplicationRecord
	validates :first_name, :last_name, :age, :highest_completed_education, presence: true
	validates :age, numericality: { :less_than => 150}
end
