class AddUserIdToSzakis < ActiveRecord::Migration[5.2]
  def change
    add_column :szakis, :user_id, :integer
  end
end
