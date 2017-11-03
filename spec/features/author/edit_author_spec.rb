require 'rails_helper'

describe "Edit author page", type: :feature do

  it "should render withour error" do
    @alan = FactoryGirl.create :author
    visit edit_author_path(@alan)
  end

  it "should have text input for first name, last name, and homepage" do
    @alan = FactoryGirl.create :author
    visit edit_author_path(@alan)

    expect(page).to have_field('First name')
    expect(page).to have_field('Last name')
    expect(page).to have_field('Homepage')
  end

  it "should let user change author's last name" do
    @alan = FactoryGirl.create :author
    visit edit_author_path(@alan)
    fill_in "author_last_name", :with => "Mathison"
    find('input[type="submit"]').click
  end

  it "should not let user edit existing author to have no last name" do
    @alan = FactoryGirl.create :author
    visit edit_author_path(@alan)
    fill_in "author_last_name", :with => nil
    find('input[type="submit"]').click

    expect(page).to have_content('Last name can\'t be blank')
  end

end
