require 'test_helper'

class CastingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get castings_index_url
    assert_response :success
  end

  test "should get new" do
    get castings_new_url
    assert_response :success
  end

  test "should get edit" do
    get castings_edit_url
    assert_response :success
  end

  test "should get show" do
    get castings_show_url
    assert_response :success
  end

end
