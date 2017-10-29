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

end
