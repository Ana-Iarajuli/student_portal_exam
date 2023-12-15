class AddAnswerToUsersTable < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :answer, :string, default: nil
  end
end
