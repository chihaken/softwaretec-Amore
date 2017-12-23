require 'test_helper'

class InquiryControllerTest < ActionDispatch::IntegrationTest
  test "should get view" do
    get inquiry_view_url
    assert_response :success
  end

end
