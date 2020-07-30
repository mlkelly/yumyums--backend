class Api::V1::RecipesController < ApplicationController
    # before_action :find_recipe, only: [:show, :destroy]

    def index
        recipes = Recipe.all
        render json: recipes
    end

    def show
        recipe = Recipe.find(params[:id])
        render json: recipe
    end

    def create
        recipe = Recipe.new(recipe_params)
        if recipe.valid?
            recipe.save
            render json: recipe
        else
            render json: {error: "Failed to create recipe"}, status: :not_acceptable
        end
        # render json: recipe
    end

    def destroy
        # byebug
        recipe = Recipe.find(params[:id])
        recipe.destroy
        redner json: {message: "Recipe deleted!!"} # not really doing anything with this, could better use or delete
    end

    private 

    def find_recipe 
        recipe = Recipe.find(params[:id])
    end

    def recipe_params
        params.require(:recipe).permit(:title, :abt, :img, :user_id)
    end
end
