require 'test_helper'

class SensorArraysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sensor_array = sensor_arrays(:aft)
    @craft = crafts(:test_ship)
  end

  test "should get index" do
    get sensor_arrays_url
    assert_response :success
  end

  test "should get new" do
    get new_sensor_array_url
    assert_response :success
  end

  test "should create sensor_array" do
    assert_difference('SensorArray.count') do
      post sensor_arrays_url, params: { sensor_array: { location: @sensor_array.location, name: @sensor_array.name, craft_id: @sensor_array.craft_id, handle: @sensor_array.handle } }
    end

    assert_redirected_to sensor_array_url(SensorArray.last)
  end

  test "should show sensor_array" do
    get sensor_array_url(@sensor_array)
    assert_response :success
  end

  test "should get edit" do
    get edit_sensor_array_url(@sensor_array)
    assert_response :success
  end

  test "should update sensor_array" do
    patch sensor_array_url(@sensor_array), params: { sensor_array: { location: @sensor_array.location, name: @sensor_array.name, craft_id: @sensor_array.craft_id, handle: @sensor_array.handle } }
    assert_redirected_to sensor_array_url(@sensor_array)
  end

  test "should destroy sensor_array" do
    senssor_array = @craft.sensor_arrays.create!(name: 'sensor array to delete')

    assert_difference('SensorArray.count', -1) do
      delete sensor_array_url(senssor_array)
    end

    assert_redirected_to sensor_arrays_url
  end
end
