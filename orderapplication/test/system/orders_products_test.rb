require "application_system_test_case"

class OrdersProductsTest < ApplicationSystemTestCase
  setup do
    @orders_product = orders_products(:one)
  end

  test "visiting the index" do
    visit orders_products_url
    assert_selector "h1", text: "Orders Products"
  end

  test "creating a Orders product" do
    visit orders_products_url
    click_on "New Orders Product"

    fill_in "Order id", with: @orders_product.order_id_id
    fill_in "Product id", with: @orders_product.product_id_id
    click_on "Create Orders product"

    assert_text "Orders product was successfully created"
    click_on "Back"
  end

  test "updating a Orders product" do
    visit orders_products_url
    click_on "Edit", match: :first

    fill_in "Order id", with: @orders_product.order_id_id
    fill_in "Product id", with: @orders_product.product_id_id
    click_on "Update Orders product"

    assert_text "Orders product was successfully updated"
    click_on "Back"
  end

  test "destroying a Orders product" do
    visit orders_products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Orders product was successfully destroyed"
  end
end
