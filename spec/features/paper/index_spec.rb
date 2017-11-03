require 'rails_helper'

describe "Paper index page", type: :feature do

    it "should have a link to the root page" do
        visit papers_path
        expect(page).to have_css('a', :text => "Back")
    end

end
