class BadCommentsController < ApplicationController
	def create
		@service = Service.find(params[:service_id])
		@comment = @service.comments.find(params[:comment_id])
		if @comment.good_comments.where(user_id: current_user).exists?
			@good_comment = current_user.good_comments.find_by(comment_id: @comment.id)
			@good_comment.destroy
			@bad_comment = current_user.bad_comments.new(comment_id: @comment.id)
			@bad_comment.save
			redirect_to service_path(params[:service_id])
		else
			@bad_comment = current_user.bad_comments.new(comment_id: @comment.id)
			@bad_comment.save
			redirect_to service_path(params[:service_id])
		end
	end
	def destroy
		@service = Service.find(params[:service_id])
		@comment = @service.comments.find(params[:comment_id])
		@bad_comment = current_user.bad_comments.find_by(comment_id: @comment.id)
		@bad_comment.destroy
		redirect_to service_path(params[:service_id])
	end
end
