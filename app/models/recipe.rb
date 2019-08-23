class Recipe < ActiveRecord::Base
    has_many :ingredients, dependent: :destroy
    has_many :directions , dependent: :destroy
    belongs_to :user 
    has_many :favorite_recipes  
    has_many :favorited_by, through: :favorite_recipes, source: :user #returns the users that favorite a recipe
    accepts_nested_attributes_for :ingredients
    accepts_nested_attributes_for :directions 
    validates :name, :prep_time, :cook_time, presence: true 
    validates :serves, numericality: {greater_than: 0 }
    
    
    
end
