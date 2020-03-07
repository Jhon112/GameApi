class AddPrimaryKeyToScores < ActiveRecord::Migration[5.2]
  def change
    add_column :scores, :id, :primary_key
  end
end
