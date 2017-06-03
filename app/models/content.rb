class Content < ApplicationRecord

  validates :photo_video, :presence => true
  validates :caption, :presence => { :message => "can't be blank" }

  belongs_to :user
  has_many :likes
  has_many :comments
  belongs_to :cuisine
  belongs_to :occassion
  belongs_to :special_diet

end
