class CreateJoinTableSubjectsLecturers < ActiveRecord::Migration[7.1]
  def change
    create_join_table :subjects, :lecturers do |t|
      t.index [:subject_id, :lecturer_id]
      t.index [:lecturer_id, :subject_id]
    end
  end
end
