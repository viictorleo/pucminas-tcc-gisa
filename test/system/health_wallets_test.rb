require "application_system_test_case"

class HealthWalletsTest < ApplicationSystemTestCase
  setup do
    @health_wallet = health_wallets(:one)
  end

  test "visiting the index" do
    visit health_wallets_url
    assert_selector "h1", text: "Health wallets"
  end

  test "should create health wallet" do
    visit health_wallets_url
    click_on "New health wallet"

    click_on "Create Health wallet"

    assert_text "Health wallet was successfully created"
    click_on "Back"
  end

  test "should update Health wallet" do
    visit health_wallet_url(@health_wallet)
    click_on "Edit this health wallet", match: :first

    click_on "Update Health wallet"

    assert_text "Health wallet was successfully updated"
    click_on "Back"
  end

  test "should destroy Health wallet" do
    visit health_wallet_url(@health_wallet)
    click_on "Destroy this health wallet", match: :first

    assert_text "Health wallet was successfully destroyed"
  end
end
