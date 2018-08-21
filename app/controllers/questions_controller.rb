class QuestionsController < ApplicationController
before_filter :question_param , only: [:update, :destroy, :show]
def new
  	@question = Question.new
  end
  
  def edit
  	@question = Question.find(params[:id])
  end
  
  def create
  	@question = Question.new(params[:question])
  	if @question.save
  		redirect_to @question
  	else
  		render 'new'
  	end
  end
  
  def update
    @question = Question.find(params[:id])
    if @question.update(params[:question])
      redirect_to @question
    else
      render 'edit'
    end
  end
  
  def destroy
  	@question = Question.find(params[:id])
  	@question.destroy
  	redirect_to @question
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
