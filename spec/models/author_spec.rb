require 'rails_helper'

describe "Author model", type: :model do

    it "should have properties first name, last name, homepage" do
         author = Author.new({
             "first_name"=>"Alan",
             "last_name"=>"Turing",
             "homepage"=>"turing.com"
         })
         expect(author.first_name).to eq('Alan')
         expect(author.last_name).to eq('Turing')
         expect(author.name).to eq('Alan Turing')
         expect(author.homepage).to eq('turing.com')
    end

    it "should not be allowed to have an empty last name" do
        author = Author.create(first_name: "Alan", last_name: nil, homepage: "asdf.com")
        expect(author.valid?).to eq(false)
    end
end
