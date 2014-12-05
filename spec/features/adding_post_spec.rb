require 'spec_helper'



  feature "User adds a new post" do
    scenario "when browsing the homepage" do
      expect(Post.count).to eq(0)
      visit '/'
      add_post('hello')
      expect(Post.count).to eq(1)
      post = Post.first
      expect(post.story).to eq('hello')
    end

  def add_post(story)
    visit '/posts/new'
    within('#new-post') do
      fill_in 'story', :with => story
      click_button 'Add post'
    end
  end
end