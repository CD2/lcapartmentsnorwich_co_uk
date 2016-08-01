require 'test_helper'

class ApartmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get apartments_show_url
    assert_response :success
  end

end
