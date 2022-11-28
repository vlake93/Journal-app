require "test_helper"

class CategoryControllerTest < ActionDispatch::IntegrationTest

  test "should get index" do
    get category_path
    assert_response :success
  end
end