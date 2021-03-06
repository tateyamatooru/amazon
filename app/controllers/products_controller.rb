class ProductsController < ApplicationController

  def index

  end

  def show
    @product = Product.find(params[:id])
    @image = @product.bookimages
    @registration = @product.registrationinformation
    @order = Order.new
    @user = current_user.id
    @like = Like.new
  end

  def update
  end

  def search
    @products = Product.where('name LIKE(?)', "%#{params[:keyword]}%").includes([:bookimages]).page(params[:page]).per(20)
  end

end
