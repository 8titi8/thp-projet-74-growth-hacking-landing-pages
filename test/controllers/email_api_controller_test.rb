require 'test_helper'

class EmailApiControllerTest < ActionDispatch::IntegrationTest
  test "should get subscribe" do
    get email_api_subscribe_url
    assert_response :success
  end

end
