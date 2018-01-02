require 'test_helper'

class MenuControllerTest < ActionDispatch::IntegrationTest
  test "should get menu_bar" do
    get menu_menu_bar_url
    assert_response :success
  end

end
