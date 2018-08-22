class VotesController < ApplicationController
before_filter :vote_param ,only: [:create]

	def create
		if @vote.save
		   redirect_to home_path, :notice => "Thanks for Voting"
		else 
		   redirect_to home_path
		end 
 	end

 	private
 	def vote_param
 		if Vote.find(:all, :conditions => { :answer_id => Answer.find(params[:answer_id])}).count > 0 
 			@vote = Vote.find(:all, :conditions => { :answer_id => Answer.find(params[:answer_id])})
 			if (@vote[0].answer.user_id == session[:user_id])
 				redirect_to home_path, :notice => "You could not like your own post"
 			else
 				@vote.each do |vote|
 					if (vote.user_id == session[:user_id])
 						redirect_to home_path, :notice => "Already Liked"
 					end
 				end
 			end
 		elsif Answer.find(params[:answer_id]).user_id == session[:user_id]
 			redirect_to home_path, :notice => "You could not like your own post"
 		else
 			@vote = Vote.new(params[:vote])
			@vote.votes = 1
 			@vote.answer = Answer.find(params[:answer_id])
			@vote.user_id = session[:user_id]	
 		end
		
 	end
end
