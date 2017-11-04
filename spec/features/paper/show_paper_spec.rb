require 'rails_helper'

describe "Paper detail page", type: :feature do

  it "should display the paper's authors" do
    @alan = FactoryGirl.create :author
    @paper = FactoryGirl.create :paper

    visit paper_path(@paper)
    expect(page).to have_content(@alan.name)
  end

end
