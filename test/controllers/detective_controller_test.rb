require 'test_helper'

class DetectiveControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get detective_index_url
    assert_response :success
  end

  test "should get new" do
    get detective_new_url
    assert_response :success
  end

  test "should get show" do
    get detective_show_url
    assert_response :success
  end

end
