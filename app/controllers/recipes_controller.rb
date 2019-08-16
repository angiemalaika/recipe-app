class RecipesController < ApplicationController
    before_action :authentication_required 
    # before_action :find_recipe, only: [:show, :edit, :update, :destroy]

    def index
    #    if  current_user.present?
      #  raise session[:user_id].inspect
        # @recipes = Recipe.all 
        @recipes = current_user.recipes.order(:id)

    #/recipes in recipes/index view  - lists al lthe recipes a user has - add link to create new recipe 
       
    end 

    def new 
        @recipe = Recipe.new 

        #/recipes/new -shows new.html form to create new recipe. add cancel or back button incase user changes their mind 

    end 

    def show 
        @recipe = Recipe.find(params[:id])
        #/recipes/:id - shows details for individual recipe add edit and delete links 

    end 

    def create
        @recipe = Recipe.find_or_create_by(recipe_params)
           @recipe.save
           redirect_to redirect_to controller: "recipes", action: "show", id: @recipe
    end

    def update 
          # @recipe = Recipe.find_by(params[:id])
          @recipe.update(recipe_params)
          redirect_to recipe_path(@recipe)
    end 

    def edit 
          # @recipe = Recipe.find_by(params[:id])
    end 

    def destroy
    # @recipe = Recipe.find_by(params[:id])
    end 

    private 

    def recipe_params 
        params.require(:recipe).permit(:name,:user_id, :directions,:user_id, :prep_time ,  :cooking_time, :level, :serving_yield  )

    end 

    def find_recipe 
        @recipe = Recipe.find(params[:id ])
    end 
end
