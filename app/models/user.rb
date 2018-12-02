class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :favorites
  has_many :services, through: :favorites
  belongs_to :status
  has_many :goods
  has_many :bads
  has_many :comments
  has_many :good_comments
  has_many :bad_comments

  enum role: { admin: 1, user: 2 }


end


