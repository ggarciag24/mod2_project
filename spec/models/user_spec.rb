require "rails_helper"

describe User do
  let(:attributes) do
    {
      name: "german garcia",
      username: "germ",
      email: "gg@gg.com",
      password: "1212"
    }
  end

  it "is considered valid" do
    expect(User.new(attributes)).to be_valid
  end


let(:missing_name) { attributes.except(:name) }
let(:missing_username) { attributes.except(:username) }
let(:missing_email) { attributes.except(:email) }

it "is invalid without a name" do
  expect(User.new(missing_name)).not_to be_valid
end

it "is invalid without a username" do
  expect(User.new(missing_username)).not_to be_valid
end

it "is invalid without a email" do
  expect(User.new(missing_email)).not_to be_valid
end
end
