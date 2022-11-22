require "application_system_test_case"

class AuthorizationRequestsTest < ApplicationSystemTestCase
  setup do
    @authorization_request = authorization_requests(:one)
  end

  test "visiting the index" do
    visit authorization_requests_url
    assert_selector "h1", text: "Authorization requests"
  end

  test "should create authorization request" do
    visit authorization_requests_url
    click_on "New authorization request"

    click_on "Create Authorization request"

    assert_text "Authorization request was successfully created"
    click_on "Back"
  end

  test "should update Authorization request" do
    visit authorization_request_url(@authorization_request)
    click_on "Edit this authorization request", match: :first

    click_on "Update Authorization request"

    assert_text "Authorization request was successfully updated"
    click_on "Back"
  end

  test "should destroy Authorization request" do
    visit authorization_request_url(@authorization_request)
    click_on "Destroy this authorization request", match: :first

    assert_text "Authorization request was successfully destroyed"
  end
end
