class Course < ApplicationRecord
	validates :name, :total_in_class_hours, presence: true
   validates :total_in_class_hours, numericality: { :greater_than => 0}
end
