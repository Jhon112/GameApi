require "rails_helper"

RSpec.describe User, type: :model do
  subject {
    described_class.new(name: "Jhon")
  }

  it "is valid with attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end
end
