class CommentUpvotesController < ApplicationController
  def create
    if CommentUpvote.where('user_id = ? AND comment_id = ?', current_user.id, params["comment_upvote"][:comment].to_i).empty?
      @commentupvote = CommentUpvote.new(comment: Comment.find(params["comment_upvote"][:comment].to_i))
      @commentupvote.user = current_user
      @commentupvote.save
    else
      CommentUpvote.where('user_id = ? AND comment_id = ?', current_user.id, params["comment_upvote"][:comment].to_i).first.destroy
    end
  end
end
