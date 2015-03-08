class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_action :set_product

  respond_to :html

  def index
    @reviews = Review.all
    respond_with(@product, @reviews)
  end

  def show
    respond_with(@product, @review)
  end

  def new
    @review = Review.new
    respond_with(@product, @review)
  end

  def edit
  end

  def create
    @review = Review.new(review_params)
    @review.save
    respond_with(@product, @review)
  end

  def update
    @review.update(review_params)
    respond_with(@product, @review)
  end

  def destroy
    @review.destroy
    respond_with(@product, @review)
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
