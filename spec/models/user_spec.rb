require 'rails_helper'

RSpec.describe User, type: :model do
  it "creates a user with an email and password" do
    user = User.create(email: "test@test.com", password: "test")
    expect(User.count).to eq 1
    expect(User.first.email).to eq "test@test.com"
  end

  it "hashes the user's password" do
    user = User.create(email: "test@test.com", password: "test")
    expect(User.first.password).not_to eq "test"
  end

  it "must have an email" do
    user = User.new(password: "test")
    expect(user.save).to eq false
  end

  it "must have a unique email" do
    user_1 = User.create(email: "test@test.com", password: "test")
    user_2 = User.new(email: "test@test.com", password: "test")
    expect(user_2.save).to eq false
  end
end
