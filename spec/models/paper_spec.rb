require 'rails_helper'

RSpec.describe Paper, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  it "should not be allowed to have an empty title" do
    @paper = Paper.create(title: nil, venue: "Someplace", year: 9000)
    expect(@paper.valid?).to eq(false)
  end

  it "should not be allowed to have an empty venue" do
    @paper = Paper.create(title: "something", venue: nil, year: 9000)
    expect(@paper.valid?).to eq(false)
  end

  it "should not be allowed to have an empty year" do
    @paper = Paper.create(title: "something", venue: "someplace", year: nil)
    expect(@paper.valid?).to eq(false)
  end

  it "should not be allowed to enter alphanumerics only for year" do
    @paper = Paper.create(title: "something", venue: "someplace", year: "nineteen-fifty")
    expect(@paper.valid?).to eq(false)
  end

  it "should have a list of authors" do
    @paper = Paper.create(title: "something", venue: "someplace", year: 1990)
    expect(@paper).to respond_to(:authors)
  end
end
