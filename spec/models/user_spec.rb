require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it "is valid with a firstname, lastname and email" do 
    user = User.new(
      email: 'mailto:sahil@example.com',
      password: 'password'
    )
    expect(user).to be_valid
  end

  it "is invalid without an email" do
    user = User.new
    user.valid?
    expect(user.errors[:email]).to include("can't be blank")
  end

  it "retutns a user email as a string" do
    user = User.new(email: 'mailto:abc@example.com')
    expect(user)
  end

  it "is invalid with a duplicate email address" do 
    user = User.create(
      email: 'mailto:har@example.com'
    )
    user.valid?
    expect(user.errors[:email])
  end

  it "should have many albums" do
    t = User.reflect_on_association(:albums)
    expect(t.macro).to eq(:has_many)
  end
 end 


