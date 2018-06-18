class Cohort < ApplicationRecord
  belongs_to :instructor
  belongs_to :course
  validates :name, :start_date, :end_date,:course_id, :instructor_id, presence: true

end
