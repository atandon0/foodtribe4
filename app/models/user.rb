class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  validates :username, :presence => true, :uniqueness => true

  has_many :contents
  has_many :likes, :class_name => "Like", :foreign_key => "user_id"
  has_many :comments

  has_many :liked_contents, :through => :contents, :source => :content

  has_many :friend_requests_where_sender, :class_name => "FriendRequest", :foreign_key => "sender_id"

  has_many :friends_where_sender, :through => :friend_requests_where_sender, :source => :receiver

  has_many :friend_requests_where_receiver, :class_name => "FriendRequest", :foreign_key => "receiver_id"

  has_many :friends_where_receiver, :through => :friend_requests_where_receiver, :source => :sender

  has_many :follows, :through => :friends_where_sender, :source => :contents

end
