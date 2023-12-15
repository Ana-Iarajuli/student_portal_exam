class CreateRequests < ActiveRecord::Migration[7.1]
  def change
    create_table :requests do |t|
      t.integer :request_code
      t.date :date
      t.references :subject, null: false, foreign_key: true
      t.references :lecturer, null: false, foreign_key: true
      t.time :selected_hours
      t.time :actual_hours

      t.timestamps
    end
  end
end
