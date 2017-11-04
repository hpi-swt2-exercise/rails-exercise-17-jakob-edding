require 'rails_helper'

describe "Paper index page", type: :feature do

    it "should have a link to the root page" do
        visit papers_path
        expect(page).to have_css('a', :text => "Back")
    end

    it "should have a link to add a new paper" do
        visit papers_path
        expect(page).to have_css('a', :text => "Add paper")
    end

end
