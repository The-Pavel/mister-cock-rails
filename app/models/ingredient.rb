class Ingredient < ApplicationRecord

  has_many :doses
  has_many :cocktails, through: :doses


  validates :name, presence: true, uniqueness: { scope: :cocktail, message: "Ingredient already exists in this cocktail"}

end
