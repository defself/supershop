class ReviewsController < ApplicationController
  before_action :set_review, only: [:edit, :update, :destroy]
  before_action :set_product
  skip_before_action :authenticate_user!, only: [:index]

  respond_to :html

  def index
    @reviews = @product.reviews.order('created_at DESC')
    respond_with(@reviews, layout: false)
  end

  def new
    @review = @product.reviews.new
    respond_with(@product, layout: false)
  end

  def edit
  end

  def create
    @review = @product.reviews.new(review_params)
    @review.save
    respond_to do |format|
      format.js
    end
  end

  def update
    @review.update(review_params)
    redirect_to product_path @product
  end

  def destroy
    @review.destroy
    redirect_to product_path @product
  end

  private
    def set_review
      @review = Review.find(params[:id])
    end

    def set_product
      @product = Product.find(params[:product_id])
    end

    def review_params
      params.require(:review).permit(:msg, :product_id, :user_id)
    end
end
