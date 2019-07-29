require 'test_helper'

class WandsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get wands_index_url
    assert_response :success
  end

  test "should get show" do
    get wands_show_url
    assert_response :success
  end

  test "should get new" do
    get wands_new_url
    assert_response :success
  end

  test "should get edit" do
    get wands_edit_url
    assert_response :success
  end

end
