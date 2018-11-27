class Comment < ApplicationRecord
  has_one :feed_content, as: :content
  belongs_to :user
  belongs_to :service
  has_many :good_comments
  has_many :bad_comments
  def comment_gooded_by?(user)
  	good_comments.where(user_id: user.id).exists?
  end
  def comment_baded_by?(user)
  	bad_comments.where(user_id: user.id).exists?
  end
end
