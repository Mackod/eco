class CommentsController < ApplicationController
  def create
    @comment = Comment.new(content: params["comment"][:content], post: Post.find(params["comment"][:post].to_i))
    @comment.user = current_user
    @comment.save
    # FOR AJAX
    @commentupvote = CommentUpvote.new
    @answer = Answer.new
  end
end
