class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :avatar, :name
  # attr_accessible :title, :body

  mount_uploader :avatar, UserAvatarUploader

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
end
