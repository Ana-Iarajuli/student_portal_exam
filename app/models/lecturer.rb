class Lecturer < ApplicationRecord
  has_many :subject_lecturers
  has_many :subjects, through: :subject_lecturers
end
