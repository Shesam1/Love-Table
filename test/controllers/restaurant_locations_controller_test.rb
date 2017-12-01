require 'test_helper'

class RestaurantLocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restaurant_location = restaurant_locations(:one)
  end

  test "should get index" do
    get restaurant_locations_url
    assert_response :success
  end

  test "should get new" do
    get new_restaurant_location_url
    assert_response :success
  end

  test "should create restaurant_location" do
    assert_difference('RestaurantLocation.count') do
      post restaurant_locations_url, params: { restaurant_location: { location_id: @restaurant_location.location_id, restaurant_id: @restaurant_location.restaurant_id } }
    end

    assert_redirected_to restaurant_location_url(RestaurantLocation.last)
  end

  test "should show restaurant_location" do
    get restaurant_location_url(@restaurant_location)
    assert_response :success
  end

  test "should get edit" do
    get edit_restaurant_location_url(@restaurant_location)
    assert_response :success
  end

  test "should update restaurant_location" do
    patch restaurant_location_url(@restaurant_location), params: { restaurant_location: { location_id: @restaurant_location.location_id, restaurant_id: @restaurant_location.restaurant_id } }
    assert_redirected_to restaurant_location_url(@restaurant_location)
  end

  test "should destroy restaurant_location" do
    assert_difference('RestaurantLocation.count', -1) do
      delete restaurant_location_url(@restaurant_location)
    end

    assert_redirected_to restaurant_locations_url
  end
end
