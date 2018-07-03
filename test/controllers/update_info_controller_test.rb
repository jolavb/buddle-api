require 'test_helper'

class UpdateInfoControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get update_info_new_url
    assert_response :success
  end

  test "should get update" do
    get update_info_update_url
    assert_response :success
  end

end
