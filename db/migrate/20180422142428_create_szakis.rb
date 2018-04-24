class CreateSzakis < ActiveRecord::Migration[5.2]
  def change
    create_table :szakis do |t|
      t.string :title
      t.text :description
      t.string :worktype

      t.timestamps
    end
  end
end
