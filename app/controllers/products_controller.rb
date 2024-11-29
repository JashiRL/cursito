class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    # pp @product esto es para mostarr el contenido de una varaible en pantalla
    if @product.save
      redirect_to products_path, notice: "Se agrego correctamente el producto"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @product = Product.find(params[:id])
  end
  # proddutc find va a buscar el id
  private

  def product_params
    params.require(:product).permit(:title, :description, :price)
  end
end
