require 'rails_helper'

describe "Author index page", type: :feature do

    it "should render withour error" do
        visit authors_path
    end

    it "should have a column titled 'Name'" do
        visit authors_path
        expect(find('th:first-child')).to have_content('Name')
    end

    it "should show author Alan Turing after he's been entered" do
        visit new_author_path
        fill_in "author_first_name", :with => "Alan"
        fill_in "author_last_name", :with => "Turing"
        fill_in "author_homepage", :with => "http://wikipedia.de/Alan_Turing"
        find('input[type="submit"]').click

        visit authors_path
        expect(page).to have_content('Alan Turing')
    end
end
