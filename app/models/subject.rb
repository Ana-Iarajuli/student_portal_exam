class Subject < ApplicationRecord
  has_many :subject_lecturers
  has_many :lecturers, through: :subject_lecturers
end
