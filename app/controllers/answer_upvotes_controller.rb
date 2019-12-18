class AnswerUpvotesController < ApplicationController
  def create
    if AnswerUpvote.where('user_id = ? AND answer_id = ?', current_user.id, params["answer_upvote"][:answer].to_i).empty?
      @answerupvote = AnswerUpvote.new(answer: Answer.find(params["answer_upvote"][:answer].to_i))
      @answerupvote.user = current_user
      @answerupvote.save
    else
      AnswerUpvote.where('user_id = ? AND answer_id = ?', current_user.id, params["answer_upvote"][:answer].to_i).first.destroy
    end
  end
end
