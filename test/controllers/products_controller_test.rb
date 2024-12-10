require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "render a list of products" do
    get products_path # esto hace una pewticion para que podamos leer la url de todos los productos
    assert_response :success
    assert_select ".product", 2
  end

  test "render a detailed product page" do
      get product_path(products(:nintendo))

      assert_response :success
      assert_select ".title",  "Nintendo Swithc"
      assert_select ".description", "Le falla un poco la batería"
      assert_select ".price", "200 $"
    # esto lee html así que debemos poner los simbolos que se añadieron
  end

  test "render a new product form" do
    get new_product_path :success
    assert_select "form"
  end
  test "allow to create a new product" do
    post products_path, params: {
      product: {
        title: "Asus ROG",
        description: "una lap fina y potente",
        price: 600
      }
    }

    assert_redirected_to products_path
    assert_equal flash[:notice], "Se agrego correctamente el producto"
  end
  test "does not allow to create a new product with empty" do
    post products_path, params: {
      product: {
        title: "",
        description: "una lap fina y potente",
        price: 600
      }
    }

    assert_response :unprocessable_entity
  end

  test "render an edit product form" do
    get edit_product_path(products(:xbox)) # esto es uun test para corroborar que si se puede editar

    assert_response :success
    assert_select "form"  # de esta manera nos cercioramos que el producto si recibe un formulario ?
  end

  test "allow to update a  product" do
    patch product_path(products(:xbox)), params: {
      product: {
        price: 600
      }
    }

    assert_redirected_to products_path
    assert_equal flash[:notice], "Tu producto se ha actualizado correctamente"
  end

  test "does not allow to update a  product" do
    patch product_path(products(:xbox)), params: {
      product: {
        price: nil
      }
    }

    assert_response :unprocessable_entity
  end
  test "can delete products " do
    assert_difference("Product.count", -1) do
    delete product_path(products(:nintendo))
    end
    assert_redirected_to products_path
    assert_equal flash[:notice], "Tu producto se ha eliminado correctamente"
  end
end
