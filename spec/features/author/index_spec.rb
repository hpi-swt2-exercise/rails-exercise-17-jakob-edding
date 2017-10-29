require 'rails_helper'

describe "Author index page", type: :feature do

    it "should render withour error" do
        visit authors_path
    end

    it "should have a column titled 'Name'" do
        visit authors_path
        expect(page).to have_css('th', :text => "Name")
    end

    it "should have a link to add a new author" do
        visit authors_path
        expect(page).to have_css('a', :text => "Add author")
    end

    it "should have a link to the author's page with text 'show'" do
        author = FactoryGirl.create :author
        visit authors_path
        expect(page).to have_css('a', :text => "Show")
    end

    it "should show author Alan Turing after he's been entered" do
        FactoryGirl.create :author
        visit authors_path
        expect(page).to have_content('Alan Turing')
    end
end
