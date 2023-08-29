require "test_helper"

class ShopsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get shops_show_url
    assert_response :success
  end
end
