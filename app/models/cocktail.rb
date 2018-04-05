class Cocktail < ApplicationRecord
  has_many :ingredients
  has_many :doses, :through => :doses
  validates :title, uniqueness: true
end
