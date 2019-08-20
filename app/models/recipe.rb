class Recipe < ActiveRecord::Base
    has_many :ingredients 
    has_many :directions 
#cacoon github + learn lab! YAS! prevents blank ingredients and directions from saving
    accepts_nested_attributes_for :ingredients
    accepts_nested_attributes_for :directions 
    #validates :name, :prep_time, :cook_time, :serves, presence: true 
end
