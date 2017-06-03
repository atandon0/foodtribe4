class SpecialDiet < ApplicationRecord

  validates :special_diet_name, :presence => true
  has_many :contents

end
