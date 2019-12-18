class PostUpvotesController < ApplicationController
  def create
    if PostUpvote.where('user_id = ? AND post_id = ?', current_user.id, params["post_upvote"][:post].to_i).empty?
      @postupvote = PostUpvote.new(post: Post.find(params["post_upvote"][:post].to_i))
      @postupvote.user = current_user
      @postupvote.save
    else
      PostUpvote.where('user_id = ? AND post_id = ?', current_user.id, params["post_upvote"][:post].to_i).first.destroy
    end
  end
end
