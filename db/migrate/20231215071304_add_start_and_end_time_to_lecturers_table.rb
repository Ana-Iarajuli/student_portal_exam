class AddStartAndEndTimeToLecturersTable < ActiveRecord::Migration[7.1]
  def change
    add_column :lecturers, :start_time, :time
    add_column :lecturers, :end_time, :time
  end
end
