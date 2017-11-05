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

    it "should filter by year if user visits page with parameter 'year' set" do
      @old_paper = FactoryGirl.create :paper, year: 1950
      @new_paper = FactoryGirl.create :paper, year: 2000

      visit papers_path(year: @old_paper.year)
      expect(page).to have_no_content(@new_paper.year)
    end
end
