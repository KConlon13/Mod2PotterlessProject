require 'test_helper'

class PatronusControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get patronus_index_url
    assert_response :success
  end

  test "should get show" do
    get patronus_show_url
    assert_response :success
  end

  test "should get new" do
    get patronus_new_url
    assert_response :success
  end

  test "should get edit" do
    get patronus_edit_url
    assert_response :success
  end

end
