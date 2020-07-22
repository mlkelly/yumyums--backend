class Api::V1::IngredientsController < ApplicationController
    before_action :find_ingredient, only: [:show, :destroy]

    def index
        ingredients = Ingredient.all
        render json: ingredients
    end

    def show
        render json: ingredient
    end

    def create
        ingredient = Ingredient.create(ingredient_params)
        render json: ingredient
    end

    def destroy
        ingredient.destory
        redner json: "Ingredient deleted!!"
    end

    private 

    def find_ingredient 
        ingredient = Ingredient.find(params[:id])
    end

    def ingredient_params
        params.require(:ingredient).permit(:name)
    end
end
