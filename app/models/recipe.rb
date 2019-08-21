class Recipe < ActiveRecord::Base
    has_many :ingredients, dependent: :destroy
    has_many :directions , dependent: :destroy
    belongs_to :user 
#cacoon github + learn lab! YAS! prevents blank ingredients and directions from saving
    accepts_nested_attributes_for :ingredients
    accepts_nested_attributes_for :directions 
    #validates :name, :prep_time, :cook_time, :serves, presence: true 
end
