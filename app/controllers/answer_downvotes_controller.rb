class AnswerDownvotesController < ApplicationController
  def create
    if AnswerDownvote.where('user_id = ? AND answer_id = ?', current_user.id, params["answer_downvote"][:answer].to_i).empty?
      @answerdownvote = AnswerDownvote.new(answer: Answer.find(params["answer_downvote"][:answer].to_i))
      @answerdownvote.user = current_user
      @answerdownvote.save
    else
      AnswerDownvote.where('user_id = ? AND answer_id = ?', current_user.id, params["answer_downvote"][:answer].to_i).first.destroy
    end
  end
end
