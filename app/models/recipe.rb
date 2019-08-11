class Recipe < ApplicationRecord
  belongs_to :user
  
  has_many :ingredient_qties
  has_many :ingredients,  through: :ingredient_qties
  has_many :comments

  validates :name, uniqueness:true 
  validates :name, presence: true
  #validates :directions, presence: true
  #validates :time, presence: true 
 
end
