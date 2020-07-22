class Api::V1::RecipesController < ApplicationController
    before_action :find_recipe, only: [:show, :destroy]

    def index
        recipes = Recipe.all
        render json: recipes
    end

    def show
        render json: recipe
    end

    def create
        recipe = Recipe.create(recipe_params)
        render json: recipe
    end

    def destroy
        recipe.destory
        redner json: "Recipe deleted!!"
    end

    private 

    def find_recipe 
        recipe = Recipe.find(params[:id])
    end

    def recipe_params
        params.require(:recipe).permit(:title, :abt, :img, :user_id)
    end
end
