require 'test_helper'

class InfobaseControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_infobase_index_url
    assert_response :success
  end

end
