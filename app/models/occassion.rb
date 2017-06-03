class Occassion < ApplicationRecord
  validates :occassion_name, :presence => true
  has_many :contents

end
