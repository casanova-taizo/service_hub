class Good < ApplicationRecord
  has_one :feed_content, as: :content
  belongs_to :user
  belongs_to :service
end
