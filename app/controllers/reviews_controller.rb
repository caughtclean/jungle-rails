class ReviewsController < ApplicationController
  # before_action :require_login

  def new
    @review = Review.new
  end

  def create
    product = Product.find(params[:product_id])
    @review = product.reviews.create(review_params)
    @review.user = current_user
    @review.save
    redirect_to "/products/#{product.id}", flash: {review_success: "Review posted!"}
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to "/products/#{params[:product_id]}", flash: {review_success: "That review was so last year anyway!"}
  end

  private

  def review_params
    params.require(:review).permit(:product_id, :description, :rating)
  end
end
