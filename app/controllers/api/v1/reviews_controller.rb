class Api::V1::ReviewsController < ApplicationController
    before_action :find_review, only: [:show, :destroy]

    def index
        reviews = Review.all
        render json: reviews
    end

    def show
        render json: review
    end

    def create
        review = Review.create(review_params)
        render json: review
    end

    def destroy
        review.destory
        redner json: "Review deleted!!"
    end

    private 

    def find_review 
        review = Review.find(params[:id])
    end

    def review_params
        params.require(:review).permit(:rating, :reason, :user_id, :recipe_id)
    end
end
