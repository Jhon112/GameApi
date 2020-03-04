class CreateJoinTableLevelUser < ActiveRecord::Migration[5.2]
  def change
    create_join_table :levels, :users, table_name: :score do |t|
      t.integer :score, null: false
      t.index :user_id
      t.index :level_id
    end
  end
end
