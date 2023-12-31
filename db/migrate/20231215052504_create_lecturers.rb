class CreateLecturers < ActiveRecord::Migration[7.1]
  def change
    create_table :lecturers do |t|
      t.string :name
      t.string :email
      t.references :subject, null: false, foreign_key: true

      t.timestamps
    end
  end
end
