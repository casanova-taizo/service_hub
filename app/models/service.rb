class Service < ApplicationRecord
  has_many :goods
  has_many :bads
  has_many :favorites
  has_many :comments
end
