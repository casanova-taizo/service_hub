class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    @comment.feed_content = FeedContent.create
  end

  private
  def comment_params
    params.require(:comment).permit(:comment_content, :user_id, :comment_id)
  end

end
