class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  before_action :ensure_ownership, except: [:create]
  def create
    @product = Product.find(params[:product_id])
    product = Product.find(params[:product_id])

    @review = current_user.reviews.new
    @review.comment = params[:review][:comment]
    @review.product_id = params[:product_id]

    if @review.save
      flash[:notice] = "You have successfully saved the review."
      redirect_to product_url(product)
    else
      render '/products/show'
    end
  end

  def edit
    @product = Product.find(params[:product_id])
  end

  def update
    @product = Product.find(params[:product_id])
    product = Product.find(params[:product_id])
    @review.comment = params[:review][:comment]
    @review.product_id = params[:product_id]

    if @review.save
      flash[:notice] = "You have successfully edited the review."
      redirect_to product_url(product)
    else
      flash.now[:alert] = @review.errors.full_messages
      render '/reviews/edit'
    end
  end

  def destroy
    @product = Product.find(params[:product_id])
    @review.destroy
    flash[:notice] = "You have successfully deleted the review."
    redirect_to product_url(@product)
  end
end
