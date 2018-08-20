class AnswersController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.create(params[:answer])
    redirect_to home_path(@question)
  end

end
