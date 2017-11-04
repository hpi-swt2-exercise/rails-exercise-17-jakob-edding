require 'rails_helper'

RSpec.describe Paper, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  it "should not be allowed to have an empty title" do
    @paper = Paper.create(title: nil, venue: "Someplace", year: 9000)
    expect(@paper.valid?).to eq(false)
  end
end
