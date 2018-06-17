class Instructor < ApplicationRecord
	validates :salary, numericality: { :greater_than => 0}

end
