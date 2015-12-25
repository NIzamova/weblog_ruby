class ProductsController < ApplicationController 
#before_filter :agree


  def index
  	@products = Product.all
  ##	@time=Time.now
  end

def new
  @product = Product.new
end

def create
  @product = Product.new(product_params)
  if @product.save
    flash[:notice]="saved"
    redirect_to products_path #, notice: "Product was created."
  else
    render "new"
  end
end

  def show 
    @product = Product.find(params[:id])
  end

private

def product_params
  params.require(:product).permit(:name, :count, :price)
end
end