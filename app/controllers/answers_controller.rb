class AnswersController < ApplicationController
	before_filter :question_answer ,only: [:create]

	def create
		if @answer.save 
		   redirect_to home_path , :notice => "Thanks for the answer"
		else 
		   redirect_to home_path , :notice => "Answer Not posted"
		end
 	end

 	private
 	def question_answer
 		@answer = Answer.new(params[:answer])
		@answer.question = Question.find(params[:question_id])
		@answer.user_id = session[:user_id]
 	end
end