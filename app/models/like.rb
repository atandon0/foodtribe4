class Like < ApplicationRecord

  validates :user_id, :presence => true, :uniqueness {:scope => :content}
  validates :content_id, :presence => true



  belongs_to :user
  belongs_to :content

end
