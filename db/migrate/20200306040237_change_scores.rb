class ChangeScores < ActiveRecord::Migration[5.2]
  def change
    rename_column :scores, :score, :total_score
  end
end
