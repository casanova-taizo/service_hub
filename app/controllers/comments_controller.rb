class CommentsController < ApplicationController
  def create
  	@comment = Comment.new(comment_params)
  	@comment.user_id = current_user.id
  	@comment.service_id = params[:service_id]
  	@comment.save
    @comment.feed_content = FeedContent.create
    @service = @comment.service
    @service.goodcount = @service.comments.count
    @service.save
    redirect_to service_path(@comment.service_id)
  end

  private
  def comment_params
    params.require(:comment).permit(:comment_content, :reply_comment)
  end

end
