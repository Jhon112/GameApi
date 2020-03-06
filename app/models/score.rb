class Score < ApplicationRecord
  validates_presence_of :total_score, on: [:create, :update], message: "can't be blank"
  belongs_to :user, foreign_key: "user_id"
  belongs_to :level, foreign_key: "level_id"
end
