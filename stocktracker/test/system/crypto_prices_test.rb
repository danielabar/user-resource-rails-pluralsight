require "application_system_test_case"

class CryptoPricesTest < ApplicationSystemTestCase
  setup do
    @crypto_price = crypto_prices(:one)
  end

  test "visiting the index" do
    visit crypto_prices_url
    assert_selector "h1", text: "Crypto Prices"
  end

  test "creating a Crypto price" do
    visit crypto_prices_url
    click_on "New Crypto Price"

    fill_in "Captured at", with: @crypto_price.captured_at
    fill_in "Cryptocurrency", with: @crypto_price.cryptocurrency_id
    fill_in "Price", with: @crypto_price.price
    click_on "Create Crypto price"

    assert_text "Crypto price was successfully created"
    click_on "Back"
  end

  test "updating a Crypto price" do
    visit crypto_prices_url
    click_on "Edit", match: :first

    fill_in "Captured at", with: @crypto_price.captured_at
    fill_in "Cryptocurrency", with: @crypto_price.cryptocurrency_id
    fill_in "Price", with: @crypto_price.price
    click_on "Update Crypto price"

    assert_text "Crypto price was successfully updated"
    click_on "Back"
  end

  test "destroying a Crypto price" do
    visit crypto_prices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Crypto price was successfully destroyed"
  end
end
