require "test_helper"

class TaskControllerTest < ActionDispatch::IntegrationTest

  test "should get index" do
    get task_path
    assert_response :success
  end
end