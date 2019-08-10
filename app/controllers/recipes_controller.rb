class RecipesController < ApplicationController
    before_action :find_recipe, only: [:show, :edit, :update, :destroy]

    def index
        @recipes = Recipe.all 
    end 

    def new 
        @recipe = Recipe.new 
    end 

    def show 
        # @recipe = Recipe.find_by(params[:id])
    end 

    def create 
        recipe = Recipe.create(recipe_params) 
        if  recipe.save #add ability for logged in user if loged in.....create else redirect to login/signup
       redirect_to recipe_path(recipe), notice: "Saved!"
        
    end 
end 

    def update 
          # @recipe = Recipe.find_by(params[:id])
    end 

    def edit 
          # @recipe = Recipe.find_by(params[:id])
    end 

    def destroy
    # @recipe = Recipe.find_by(params[:id])
    end 

    private 

    def recipe_params 
        params.require(:recipe).permit(:name, :directions, :time)
    end 

    def find_recipe 
        @recipe = Recipe.find_by(params[:id ])
    end 
end
