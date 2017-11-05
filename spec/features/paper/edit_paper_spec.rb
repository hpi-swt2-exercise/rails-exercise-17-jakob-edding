require 'rails_helper'

describe "Edit paper page", type: :feature do

  it "should have select input for Author 1" do
    @paper = FactoryGirl.create :paper
    visit edit_paper_path(@paper)

    expect(page).to have_field('Author 1')
  end

  it "should be allowed to add a new author to a paper" do
    @alan = FactoryGirl.create :author
    @paper = FactoryGirl.create :paper, authors: [@alan]

    @plagiarist = FactoryGirl.create :author, first_name: 'Peter', last_name: 'Plagiarist'

    visit edit_paper_path(@paper)
    page.select @plagiarist.name, :from => 'paper_author_id_1'
    find('input[type="submit"]').click

    expect(page).to have_content(@plagiarist.name)
  end

end
