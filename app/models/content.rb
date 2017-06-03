class Content < ApplicationRecord

  validates :photo_video, :presence => { :message => ": Please put image or video"}
  validates :caption, :presence => true
  validates :cuisine_id, :presence => true
  validates :occassion_id, :presence => true


  belongs_to :user
  has_many :likes
  has_many :comments

  has_many :fans, :through => :likes, :source => :user

  belongs_to :cuisine
  belongs_to :occassion
  belongs_to :special_diet

end
