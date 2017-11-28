class ReviewsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    product = Product.find(params[:product_id])

    @review = Review.new
    @review.comment = params[:review][:comment]
    @review.product_id = params[:product_id]

    if @review.save
      flash[:notice] = "You have successfully saved the review."
      redirect_to product_url(product)
    else
      render '/products/show'
    end
  end

end
