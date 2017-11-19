require 'test_helper'

class JerriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jerry = jerries(:one)
  end

  test "should get index" do
    get jerries_url
    assert_response :success
  end

  test "should get new" do
    get new_jerry_url
    assert_response :success
  end

  test "should create jerry" do
    assert_difference('Jerry.count') do
      post jerries_url, params: { jerry: { description: @jerry.description, name: @jerry.name, picture: @jerry.picture } }
    end

    assert_redirected_to jerry_url(Jerry.last)
  end

  test "should show jerry" do
    get jerry_url(@jerry)
    assert_response :success
  end

  test "should get edit" do
    get edit_jerry_url(@jerry)
    assert_response :success
  end

  test "should update jerry" do
    patch jerry_url(@jerry), params: { jerry: { description: @jerry.description, name: @jerry.name, picture: @jerry.picture } }
    assert_redirected_to jerry_url(@jerry)
  end

  test "should destroy jerry" do
    assert_difference('Jerry.count', -1) do
      delete jerry_url(@jerry)
    end

    assert_redirected_to jerries_url
  end
end
