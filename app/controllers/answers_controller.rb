class AnswersController < ApplicationController
  def create
    @answer = Answer.new(content: params["answer"][:content], comment: Comment.find(params["answer"][:comment].to_i))
    @answer.user = current_user
    @answer.save
  end
end
