require "rails_helper"

RSpec.describe Score, type: :model do
  let(:user) { User.new(id: 1, name: "Jhon") }
  let(:level) { Level.new(id: 1, name: "Level 1") }
  let(:score) { Score.new(total_score: 500, user_id: 1, level_id: 1) }

  it "is not valid without total_score" do
    score.total_score = nil
    expect(score).to_not be_valid
  end

  it "is not valid without user_id" do
    score.user_id = nil
    expect(score).to_not be_valid
  end

  it "is not valid without level_id" do
    score.level_id = nil
    expect(score).to_not be_valid
  end
end
