require 'test_helper'

class SeekersControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get seekers_edit_url
    assert_response :success
  end

end
