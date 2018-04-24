class AddCategoryIdToSzakis < ActiveRecord::Migration[5.2]
  def change
    add_column :szakis, :category_id, :integer
  end
end
