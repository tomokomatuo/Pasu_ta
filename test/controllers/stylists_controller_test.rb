require 'test_helper'

class StylistsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get stylists_edit_url
    assert_response :success
  end

end
