require "test_helper"

class FeelingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @feeling = feelings(:one)
  end

  test "should get index" do
    get feelings_url, as: :json
    assert_response :success
  end

  test "should create feeling" do
    assert_difference('Feeling.count') do
      post feelings_url, params: { feeling: { description: @feeling.description, name: @feeling.name } }, as: :json
    end

    assert_response 201
  end

  test "should show feeling" do
    get feeling_url(@feeling), as: :json
    assert_response :success
  end

  test "should update feeling" do
    patch feeling_url(@feeling), params: { feeling: { description: @feeling.description, name: @feeling.name } }, as: :json
    assert_response 200
  end

  test "should destroy feeling" do
    assert_difference('Feeling.count', -1) do
      delete feeling_url(@feeling), as: :json
    end

    assert_response 204
  end
end
