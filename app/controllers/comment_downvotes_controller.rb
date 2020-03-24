class CommentDownvotesController < ApplicationController
    def create
    if CommentDownvote.where('user_id = ? AND comment_id = ?', current_user.id, params["comment_downvote"][:comment].to_i).empty?
      @commentdownvote = CommentDownvote.new(comment: Comment.find(params["comment_downvote"][:comment].to_i))
      @commentdownvote.user = current_user
      @commentdownvote.save
    else
      CommentDownvote.where('user_id = ? AND comment_id = ?', current_user.id, params["comment_downvote"][:comment].to_i).first.destroy
    end
  end
end
