require 'spec_helper'

describe Post do

  it 'should be created and then retrieved from the db' do
    expect(Post.count).to eq(0)
    Post.create(story: "Hello World!")
    expect(Post.count).to eq(1)
    post=Post.first
    expect(post.story).to eq("Hello World!")
    post.destroy
    expect(Post.count).to eq(0)
  end

 end
