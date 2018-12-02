class Comment < ApplicationRecord
  has_one :feed_content, as: :content
  belongs_to :user
  belongs_to :service
  has_many :good_comments
  has_many :bad_comments
end
