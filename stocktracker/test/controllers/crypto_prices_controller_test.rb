require "test_helper"

class CryptoPricesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crypto_price = crypto_prices(:one)
  end

  test "should get index" do
    get crypto_prices_url
    assert_response :success
  end

  test "should get new" do
    get new_crypto_price_url
    assert_response :success
  end

  test "should create crypto_price" do
    assert_difference('CryptoPrice.count') do
      post crypto_prices_url, params: { crypto_price: { captured_at: @crypto_price.captured_at, cryptocurrency_id: @crypto_price.cryptocurrency_id, price: @crypto_price.price } }
    end

    assert_redirected_to crypto_price_url(CryptoPrice.last)
  end

  test "should show crypto_price" do
    get crypto_price_url(@crypto_price)
    assert_response :success
  end

  test "should get edit" do
    get edit_crypto_price_url(@crypto_price)
    assert_response :success
  end

  test "should update crypto_price" do
    patch crypto_price_url(@crypto_price), params: { crypto_price: { captured_at: @crypto_price.captured_at, cryptocurrency_id: @crypto_price.cryptocurrency_id, price: @crypto_price.price } }
    assert_redirected_to crypto_price_url(@crypto_price)
  end

  test "should destroy crypto_price" do
    assert_difference('CryptoPrice.count', -1) do
      delete crypto_price_url(@crypto_price)
    end

    assert_redirected_to crypto_prices_url
  end
end
