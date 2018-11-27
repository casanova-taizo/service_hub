class Service < ApplicationRecord
  acts_as_taggable # Alias for acts_as_taggable_on :tags
  attachment :service_image
  has_many :goods
  has_many :bads
  has_many :users, through: :favorites
  has_many :favorites
  has_many :comments
  def gooded_by?(user)
          goods.where(user_id: user.id).exists?
  end
  def baded_by?(user)
          bads.where(user_id: user.id).exists?
  end
  def favorited_by?(user)
  		  favorites.where(user_id: user.id).exists?
  end



end
