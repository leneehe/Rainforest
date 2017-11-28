class ProductsController < ApplicationController
  def index
    @products = Product.all
    # @product_in_dollars = @product.price_in_dollars
  end

  def show
    @product = Product.find(params[:id])
    @review = Review.new
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new
    @product.name = params[:product][:name]
    @product.description = params[:product][:description]
    @product.price = params[:product][:price]

    if @product.save
      flash[:notice] = "You have successfully saved the product."
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.name = params[:product][:name]
    @product.description = params[:product][:description]
    @product.price = params[:product][:price]

    if @product.save
      flash[:notice] = "You have successfully edited the product."
      redirect_to product_path(@product)
    else
      render :edit
    end

  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "You have successfully deleted the product."
    redirect_to products_path
  end

end
