require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "should create product" do
    visit products_url
    click_on "New product"

    fill_in "Brand", with: @product.brand
    fill_in "Image url", with: @product.image_url
    fill_in "Price", with: @product.price
    fill_in "Product description", with: @product.product_description
    fill_in "Product name", with: @product.product_name
    fill_in "Quantity in stock", with: @product.quantity_in_stock
    fill_in "Rating", with: @product.rating
    fill_in "Reviews", with: @product.reviews
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "should update Product" do
    visit product_url(@product)
    click_on "Edit this product", match: :first

    fill_in "Brand", with: @product.brand
    fill_in "Image url", with: @product.image_url
    fill_in "Price", with: @product.price
    fill_in "Product description", with: @product.product_description
    fill_in "Product name", with: @product.product_name
    fill_in "Quantity in stock", with: @product.quantity_in_stock
    fill_in "Rating", with: @product.rating
    fill_in "Reviews", with: @product.reviews
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "should destroy Product" do
    visit product_url(@product)
    click_on "Destroy this product", match: :first

    assert_text "Product was successfully destroyed"
  end
end
