require "rails_helper"

RSpec.describe Level, type: :model do
  it "is valid with attributes" do
    expect(Level.new(name: "Jhon")).to be_valid
  end

  it "is not valid without name" do
    level = Level.new(name: nil)
    expect(level).to_not be_valid
  end
end
