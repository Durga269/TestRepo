class QuestionsController < ApplicationController
before_filter :question_param , only: [:destroy, :show]
def new
  	@question = Question.new
  end
  
  
  def create
  	@question = Question.new(params[:question])
  	if @question.save
  		redirect_to home_path , :notice => "Your question is posted"
  	else
  		render 'new'
  	end
  end

  
  def destroy
  	@question = Question.find(params[:id])
  	@question.destroy
  	redirect_to @question , :notice => "You deleted a question"
end

  def show
  	@question = Question.find(params[:id])
  end

  def index
  	@question = Question.all
  end
private
def question_param
    @question = Question.find(params[:id])
end
  
end
