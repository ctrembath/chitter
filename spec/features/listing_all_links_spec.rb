require 'spec_helper'


feature "user browses the list of posts" do

  # before(:each) do 
  #   Post.create(:story => "hello world!")
  # end

 scenario "when opening the home page" do
    visit('/')
    expect(page).to have_content("chitta")
  end


end