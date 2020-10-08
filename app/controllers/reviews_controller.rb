class ReviewsController < ApplicationController
    def index
        @reviews = Review.all 
        render json: @reviews
    end 

    def create 
        @review = Review.create(review_params)
        if @review.valid? 
            render json: @review, status: 201 
        else 
            render json: @review.errors.full_messages
        end
    end  

        def show 
            @review = Review.find(params[:id])
            render json: @review
        end 

        def update 
            @review = Review.find(params[:id])
            @review.update(review_params)
            render json: @review
        end 

            def destroy 
            @review = Review.find(params[:id])
            @review.destroy
            render json: {message: "Review has been deleted successfully!", review: @review}
        end 


    private 

        def review_params
            params.permit(:review, :movie_id, :user_id)
        end 

       
end
