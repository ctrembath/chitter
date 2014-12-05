require 'spec_helper'
require './lib/user'
require './app/helpers/application'

feature "User signs up" do
  scenario "when being a new user visiting the site" do
    expect {sign_up}.to change(User, :count).by(1)
    expect(page).to have_content("Welcome, clare@example.com")
    expect(User.first.email).to eq("clare@example.com")
  end

  def sign_up(email = "clare@example.com",
              password= "clare")
    visit '/users/new'
    fill_in :email, :with => email
    fill_in :password, :with => password
    click_button "Sign Up"
  end
end

