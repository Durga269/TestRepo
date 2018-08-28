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
 		if current_user.answers.where("id = #{params[:answer_id]}").count > 0
 	 		redirect_to home_path, :notice => "You could not like your own post"
 		elsif current_user.votes.where("answer_id = #{params[:answer_id]}").count > 0
 	 		redirect_to home_path, :notice => "Already Liked"
 		else
 			@vote = Vote.new(params[:vote])
			@vote.votes = 1
 			@vote.answer = Answer.find(params[:answer_id])
			@vote.user_id = current_user	
 		end
 	end
end
