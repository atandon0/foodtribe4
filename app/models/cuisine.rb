class Cuisine < ApplicationRecord

  validates :cuisine_name, :presence => true
  

  has_many :contents


end
