class Ingredient < ApplicationRecord
    has_many :recipes, through: :ingredient_qties
    has_many :ingredient_qties

    validates :name, presence: true
     validates :name, uniqueness: true
end
