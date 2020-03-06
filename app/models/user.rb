class User < ApplicationRecord
  validates_presence_of :name, on: [:create, :update], message: "can't be blank"
  has_many :scores
end
