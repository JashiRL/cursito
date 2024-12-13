class ProductsController < ApplicationController
  def index
    @products = Product.all.with_attached_photo
  end

  def show
    product # esta solo sería mandar llamar al metodo product y así poder mostrar
    # el producto en pantalla, mandar llamar nuestra instancia de productos, etc...
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
    product
  end
  # proddutc find va a buscar el id

  def update
    if product.update(product_params)
      redirect_to products_path, notice: "Tu producto se ha actualizado correctamente"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    product.destroy
    redirect_to products_path, notice: "Tu producto se ha eliminado correctamente", status: :see_other
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :price, :photo)
  end

  def product
    @product = Product.find(params[:id])
  end
end
