require 'rails_helper'

describe "Index page", :type => :feature do

  it "should display 'Paper Management System'" do
    visit root_path
    expect(page).to have_text("Paper Management System")
  end

  it "should have a link to paper index" do
    visit root_path
    expect(page).to have_css('a', :text => "Show papers")
  end

  it "should have a link to author index" do
    visit root_path
    expect(page).to have_css('a', :text => "Show authors")
  end
end
