class AddSzakiIdToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :szaki_id, :integer
  end
end
