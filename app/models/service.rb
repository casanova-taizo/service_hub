class Service < ApplicationRecord
  has_many :favorites
    has_many :users, through: :favorites
  acts_as_taggable # Alias for acts_as_taggable_on :tags
  attachment :service_image
  has_many :goods
  has_many :bads
  has_many :comments
end
