class Ingredient < ApplicationRecord

  has_many :doses, dependent: :destroy
  has_many :cocktails, through: :doses


  validates :name, presence: true
  # validates :name, uniqueness: { scope: :cocktail, through: :doses, message: "Ingredient already exists in this cocktail"}

end
