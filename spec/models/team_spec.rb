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
let(:missing_point_guard) { attributes.except(:point_guard_id) }
let(:missing_shooting_guard) { attributes.except(:shooting_guard_id) }
let(:missing_small_forward) { attributes.except(:small_forward_id) }
let(:missing_power_forward) { attributes.except(:power_forward_id) }
let(:missing_center) { attributes.except(:center_id) }



it "is invalid without a name" do
  expect(Team.new(missing_name)).not_to be_valid
end

it "is invalid without a city" do
  expect(Team.new(missing_city)).not_to be_valid
end

it "is invalid without a mascot" do
  expect(Team.new(missing_mascot)).not_to be_valid
end

it "is invalid without a point guard" do
  expect(Team.new(missing_point_guard)).not_to be_valid
end

it "is invalid without a shooting guard" do
  expect(Team.new(missing_shooting_guard)).not_to be_valid
end

it "is invalid without a small forward" do
  expect(Team.new(missing_small_forward)).not_to be_valid
end

it "is invalid without a power forward" do
  expect(Team.new(missing_power_forward)).not_to be_valid
end

it "is invalid without a center" do
  expect(Team.new(missing_center)).not_to be_valid
end

end
