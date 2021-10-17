require 'test_helper'

class Admins::ProdactsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_prodacts_index_url
    assert_response :success
  end

  test "should get show" do
    get admins_prodacts_show_url
    assert_response :success
  end

  test "should get new" do
    get admins_prodacts_new_url
    assert_response :success
  end

  test "should get edit" do
    get admins_prodacts_edit_url
    assert_response :success
  end

end
