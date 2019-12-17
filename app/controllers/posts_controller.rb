class PostsController < ApplicationController
  def index
    @posts = Post.all.order(self.post_upvotes.length)
  end
end
