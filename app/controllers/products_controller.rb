class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def home
    @most_reviews = Product.most_reviews
    @most_recent = Product.most_recent
    @usa = Product.usa
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path
    else
      flash[:alert] = "fill out all required fields please!"
      render :edit
    end
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product has been added."
      redirect_to products_path
    else
      render :new
    end
end

private
  def product_params
    params.require(:product).permit(:name, :cost, :origin)
  end
end
