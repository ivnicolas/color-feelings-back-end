require "test_helper"

class ColorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @color = colors(:one)
  end

  test "should get index" do
    get colors_url, as: :json
    assert_response :success
  end

  test "should create color" do
    assert_difference('Color.count') do
      post colors_url, params: { color: { feeling_id: @color.feeling_id, hex_code: @color.hex_code, likes: @color.likes, name: @color.name } }, as: :json
    end

    assert_response 201
  end

  test "should show color" do
    get color_url(@color), as: :json
    assert_response :success
  end

  test "should update color" do
    patch color_url(@color), params: { color: { feeling_id: @color.feeling_id, hex_code: @color.hex_code, likes: @color.likes, name: @color.name } }, as: :json
    assert_response 200
  end

  test "should destroy color" do
    assert_difference('Color.count', -1) do
      delete color_url(@color), as: :json
    end

    assert_response 204
  end
end
