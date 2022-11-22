require "test_helper"

class HealthWalletsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @health_wallet = health_wallets(:one)
  end

  test "should get index" do
    get health_wallets_url
    assert_response :success
  end

  test "should get new" do
    get new_health_wallet_url
    assert_response :success
  end

  test "should create health_wallet" do
    assert_difference("HealthWallet.count") do
      post health_wallets_url, params: { health_wallet: {  } }
    end

    assert_redirected_to health_wallet_url(HealthWallet.last)
  end

  test "should show health_wallet" do
    get health_wallet_url(@health_wallet)
    assert_response :success
  end

  test "should get edit" do
    get edit_health_wallet_url(@health_wallet)
    assert_response :success
  end

  test "should update health_wallet" do
    patch health_wallet_url(@health_wallet), params: { health_wallet: {  } }
    assert_redirected_to health_wallet_url(@health_wallet)
  end

  test "should destroy health_wallet" do
    assert_difference("HealthWallet.count", -1) do
      delete health_wallet_url(@health_wallet)
    end

    assert_redirected_to health_wallets_url
  end
end
