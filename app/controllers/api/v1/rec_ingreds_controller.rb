class Api::V1::RecIngredsController < ApplicationController
    before_action :find_recIngred, only: [:show, :destroy]

    def index
        rec_ingreds = RecIngred.all
        render json: rec_ingreds
    end

    def show
        render json: rec_ingred
    end

    def create
        rec_ingred = RecIngred.create(recIngred_params)
        render json: rec_ingred
    end

    def destroy
        rec_ingred.destory
        redner json: "RecIngred deleted!!"
    end

    private 

    def find_recIngred 
        rec_ingred = RecIngred.find(params[:id])
    end

    def recIngred_params
        params.require(:rec_ingred).permit(:amount, :instruction, :recipe_id, :ingredient_id)
    end
end
