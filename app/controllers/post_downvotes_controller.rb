class PostDownvotesController < ApplicationController
  def create
    if PostDownvote.where('user_id = ? AND post_id = ?', current_user.id, params["post_downvote"][:post].to_i).empty?
      @postdownvote = PostDownvote.new(post: Post.find(params["post_downvote"][:post].to_i))
      @postdownvote.user = current_user
      @postdownvote.save
    else
      PostDownvote.where('user_id = ? AND post_id = ?', current_user.id, params["post_downvote"][:post].to_i).first.destroy
    end
  end
end
