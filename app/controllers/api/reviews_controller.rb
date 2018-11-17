class Api::ReviewsController < ApplicationController
before_action :set_review, only: [:show, :update, :destroy]

  def index
    @makeup = Makeup.find(params[:makeup_id])
    render json: @makeup.reviews
  end

  def create
    review = Review.new(review_params)
      if review.save
        render json: review
      else
        render json: {message: review.errors}, status:400
      end
    end

  def show
    render json: @review
  end

  def update
    if @review.update(review_params)
     render json: @review
   else
     render json: {message: @review.errors}, status: 400
   end
 end

 def destroy
   if @review.destroy
    render status: 204
   else
    render json: {message: "Unable to remove this makeup"}, status: 400
  end
end

private

  def review_params
    params.require(:review).permit(:makeup_id, :name, :city, :rating, :content)
  end

  def set_review
    @review = Review.find_by(id: params[:id])
  end
end
