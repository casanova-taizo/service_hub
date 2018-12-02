class GoodCommentsController < ApplicationController
	def create
		@service = Service.find(params[:service_id])
		@comment = @service.comments.find(params[:comment_id])
		if @comment.bad_comments.where(user_id: current_user).exists?
			@bad_comment = current_user.bad_comments.find_by(comment_id: @comment.id)
			@bad_comment.destroy
			@good_comment = current_user.good_comments.new(comment_id: @comment.id)
			@good_comment.save
			@comment.goodcount = @comment.good_comments.count
			@comment.save
			redirect_to service_path(params[:service_id])
		else
			@good_comment = current_user.good_comments.new(comment_id: @comment.id)
			@good_comment.save
			@comment.goodcount = @comment.good_comments.count
			@comment.save
			redirect_to service_path(params[:service_id])
		end
	end
	def destroy
		@service = Service.find(params[:service_id])
		@comment = @service.comments.find(params[:comment_id])
		@good_comment = current_user.good_comments.find_by(comment_id: @comment.id)
		@good_comment.destroy
		@comment.goodcount = @comment.good_comments.count
		@comment.save
		redirect_to service_path(params[:service_id])
	end
end
