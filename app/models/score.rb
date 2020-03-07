class Score < ApplicationRecord
  validates_presence_of :total_score, on: [:create, :update], message: "can't be blank"
  belongs_to :user
  belongs_to :level
end
