require 'rails_helper'

describe "Edit paper page", type: :feature do

  it "should have select input for Author 1" do
    @paper = FactoryGirl.create :paper
    visit edit_paper_path(@paper)

    expect(page).to have_field('Author 1')
  end

end
