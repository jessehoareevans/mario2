class ReviewsController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(product_params)
    if @review.save
      redirect_to product_path(@review.product)
      
    CommentMailer.new_comment(@review).deliver_now
    else
      render :new
    end
end

  def edit
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
    render :edit
  end

  def update
    @product = Product.find(params[:product_id])
    @product = Review.find(params[:id])

    if product_params[:description] === "done_products"
      @product.update(done_products: true)

      redirect_to product_path(@product.product)
    elsif @product.update(product_params)
      redirect_to product_path(@product.product)
    else
      render :edit
    end
  end

  def destroy
      @product = Task.find(params[:id])
      @product.destroy
      redirect_to product_path(@product.product)
    end


private
  def product_params
    params.require(:review).permit(:author, :content, :rating)
  end
end
