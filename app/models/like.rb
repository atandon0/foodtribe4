class Like < ApplicationRecord

  validates :user_id, :uniqueness => {:scope => :content_id, :message => "already liked this photo!"}
  validates :content_id, :presence => true



  belongs_to :user
  belongs_to :content

end
