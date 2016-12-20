require 'test_helper'

class TomorrowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tomorrow = tomorrows(:one)
  end

  test "should get index" do
    get tomorrows_url
    assert_response :success
  end

  test "should get new" do
    get new_tomorrow_url
    assert_response :success
  end

  test "should create tomorrow" do
    assert_difference('Tomorrow.count') do
      post tomorrows_url, params: { tomorrow: { name: @tomorrow.name } }
    end

    assert_redirected_to tomorrow_url(Tomorrow.last)
  end

  test "should show tomorrow" do
    get tomorrow_url(@tomorrow)
    assert_response :success
  end

  test "should get edit" do
    get edit_tomorrow_url(@tomorrow)
    assert_response :success
  end

  test "should update tomorrow" do
    patch tomorrow_url(@tomorrow), params: { tomorrow: { name: @tomorrow.name } }
    assert_redirected_to tomorrow_url(@tomorrow)
  end

  test "should destroy tomorrow" do
    assert_difference('Tomorrow.count', -1) do
      delete tomorrow_url(@tomorrow)
    end

    assert_redirected_to tomorrows_url
  end
end
