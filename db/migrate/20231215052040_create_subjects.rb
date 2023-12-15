class CreateSubjects < ActiveRecord::Migration[7.1]
  def change
    create_table :subjects do |t|
      t.string :title
      t.text :description
      t.integer :lecturer_id
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end
