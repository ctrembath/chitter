require 'spec_helper'

feature "User browses the list of posts" do

  before(:each) {
    Post.create(:story => "hello world!")
  }

  scenario "when opening the home page" do
    visit '/'
    expect(page).to have_content("ch^tta")
  end
end