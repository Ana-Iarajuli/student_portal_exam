class AddQuestionToUsersTable < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :question, :string, default: "Khinkali tu Mwvadi?"
  end
end
