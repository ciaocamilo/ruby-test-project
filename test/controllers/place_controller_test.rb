require 'test_helper'

class PlaceControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get place_create_url
    assert_response :success
  end

  test "should get view" do
    get place_view_url
    assert_response :success
  end

  test "should get show" do
    get place_show_url
    assert_response :success
  end

  test "should get delete" do
    get place_delete_url
    assert_response :success
  end

  test "should get update" do
    get place_update_url
    assert_response :success
  end

end
