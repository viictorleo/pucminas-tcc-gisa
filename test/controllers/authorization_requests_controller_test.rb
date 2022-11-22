require "test_helper"

class AuthorizationRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @authorization_request = authorization_requests(:one)
  end

  test "should get index" do
    get authorization_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_authorization_request_url
    assert_response :success
  end

  test "should create authorization_request" do
    assert_difference("AuthorizationRequest.count") do
      post authorization_requests_url, params: { authorization_request: {  } }
    end

    assert_redirected_to authorization_request_url(AuthorizationRequest.last)
  end

  test "should show authorization_request" do
    get authorization_request_url(@authorization_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_authorization_request_url(@authorization_request)
    assert_response :success
  end

  test "should update authorization_request" do
    patch authorization_request_url(@authorization_request), params: { authorization_request: {  } }
    assert_redirected_to authorization_request_url(@authorization_request)
  end

  test "should destroy authorization_request" do
    assert_difference("AuthorizationRequest.count", -1) do
      delete authorization_request_url(@authorization_request)
    end

    assert_redirected_to authorization_requests_url
  end
end
