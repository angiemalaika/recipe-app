class RecipesController < ApplicationController
before_action :authentication_required 


    before_action :find_recipe, only: [:show, :edit, :update, :destroy]

    def index
     #   if  session[:user_id].present ?
        @recipes = Recipe.all 
    end 

    def new 
        @recipe = Recipe.new 
    end 

    def show 
        @recipe = Recipe.find(params[:id])
    end 

    def create
        @recipe = Recipe.new(recipe_params)
          if @recipe.save
           redirect_to @recipe, notice: 'Recipe was successfully created.' 
         
          else
            render :new 
           
          end
        end
    
#     def create 
#         recipe = Recipe.create(recipe_params) 
#         if  recipe.save #add ability for logged in user if loged in.....create else redirect to login/signup
#        redirect_to recipe_path(recipe), notice: "Saved!"
        
#     end 
# end 

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
        @recipe = Recipe.find(params[:id ])
    end 
end
