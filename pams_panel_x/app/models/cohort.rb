class Cohort < ApplicationRecord
  belongs_to :instructor, required: false
  belongs_to :course , required: false
end
