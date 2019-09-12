require "rails_helper"

describe Team do
  let(:attributes) do
    {
      name: "lakeshow",
      city: "LA",
      mascot: "Lake"
    }
  end
#
#   # it "is considered valid" do
#   #   expect(Team.new(attributes)).to be_valid
#   # end


let(:missing_name) { attributes.except(:name) }
let(:missing_city) { attributes.except(:city) }
let(:missing_mascot) { attributes.except(:mascot) }

it "is invalid without a name" do
  expect(Team.new(missing_name)).not_to be_valid
end

it "is invalid without a city" do
  expect(Team.new(missing_city)).not_to be_valid
end

it "is invalid without a mascot" do
  expect(Team.new(missing_mascot)).not_to be_valid
end
end
